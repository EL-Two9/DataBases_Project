-- Crear una tabla para llevar el reporte de los insert, delete y updates de las tablas contrato, cuenta de cobro
-- ¿el id es modificable? ¿es posible impedir que alguien ingrese el valor de la fecha o tocaría hacer un trigger :/?
drop trigger if exists tr_regis_con_ins;
delimiter $$;
create trigger  tr_regis_con_ins after insert on contrato for each row
	begin
		insert into registroContrato values (
			null,
            'INSERT',
            null,
            new.id_contrato,
            null,
            new.id_empleado,
            null,
            new.valor_mensual_contrato,
            new.fecha_inicio_contrato,
            new.fecha_final_contrato,
            null,
            new.horas_de_trabajo_al_dia,
            now()
        );
    end $$;
delimiter ;

drop trigger if exists tr_regis_con_del;
delimiter $$;
create trigger tr_regis_con_del after delete on contrato for each row
	begin
		insert into registroContrato values (
			null,
            'DELETE',
            old.id_contrato,
            null,
            old.id_empleado,
            null,
            old.valor_mensual_contrato,
            null,
            old.fecha_inicio_contrato,
            old.fecha_final_contrato,
            old.horas_de_trabajo_al_dia,
            null,
            now()
        );
    end $$;
delimiter ;

drop trigger if exists tr_regis_con_upd;
delimiter $$;
create trigger tr_regis_con_upd after update on contrato for each row
	begin
		insert into registroContrato values (
			null,
            'UPDATE',
            old.id_contrato,
            new.id_contrato,
            old.id_empleado,
            new.id_empleado,
            old.valor_mensual_contrato,
            new.valor_mensual_contrato,
            old.fecha_inicio_contrato,
            old.fecha_final_contrato,
            old.horas_de_trabajo_al_dia,
            new.horas_de_trabajo_al_dia,
            now()
        );
    end $$;
delimiter ;

drop trigger if exists tr_regis_cuen_ins;
delimiter $$;
create trigger tr_regis_cuen_ins after insert on cuentadecobro for each row
	begin
		insert into registroCuentaCobro values (
			null, 
			'INSERT',
			new.id_cuenta_de_cobro,
			new.id_contrato,
			null,
			new.numero_de_cuenta,
			null,
			new.pago_seguridad_social,
			null,
			new.informe_actividades,
			new.fecha_en_la_que_cobra,
			null,
			new.numero_meses_a_cobrar,
			null,
			new.valor_total_a_cobrar,
			now()
        );
    end $$;
delimiter ;

drop trigger if exists tr_regis_cuen_del;
delimiter &&;
create trigger tr_regis_cuen_del after delete on cuentadecobro for each row
	begin
		insert into registroCuentaCobro values (
			null, 
			'DELETE',
			old.id_cuenta_de_cobro,
			old.id_contrato,
			old.numero_de_cuenta,
			null,
			old.pago_seguridad_social,
			null,
			old.informe_actividades,
			null,
			new.fecha_en_la_que_cobra,
			old.numero_meses_a_cobrar,
			null,
			old.valor_total_a_cobrar,
			null,
			now()
        );
    end $$;
delimiter ;

drop trigger if exists tr_regis_cuen_upd;
delimiter &&;
create trigger tr_regis_cuen_upd after update on cuentadecobro for each row
	begin
		insert into registroCuentaCobro values (
			null, 
			'DELETE',
			old.id_cuenta_de_cobro,
			old.id_contrato,
			old.numero_de_cuenta,
			new.numero_de_cuenta,
			old.pago_seguridad_social,
			new.pago_seguridad_social,
			old.informe_actividades,
			new.informe_actividades,
			new.fecha_en_la_que_cobra,
			old.numero_meses_a_cobrar,
			new.numero_meses_a_cobrar,
			old.valor_total_a_cobrar,
			new.valor_total_a_cobrar,
			now()
        );
    end $$;
delimiter ;

-- revisar si la fecha final es menor a la fecha inicial y revisar que horas de trabajo al día no pase de 24
drop trigger if exists tr_fecha_mayor;
delimiter $$;
create trigger tr_fecha_mayor before insert on contrato for each row
	begin
        set @fecha_inicio = new.fecha_inicio_contrato,
			@fecha_final = new.fecha_final_contrato,
            @horas_trabajo_dia = new.horas_de_trabajo_al_dia;
        if @fecha_inicio > @fecha_final then
			SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'La fecha de inicio debe ser menor a la fecha final';
		end if;
        
        if @horas_trabajo_dia > 24 then
			SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Las horas de trabajo por día no pueden sobrepasar las 24 horas';
        end if;
        
    end $$;
delimiter ;


-- revisar que en informe de actividades y pago seguridad social solo se use la palabra si o no (preguntar porque estaba con 5 y no con 2)
drop trigger if exists tr_ifo_act_seg_soc;
delimiter $$;
create trigger tr_ifo_act_seg_soc before insert on cuentadecobro for each row
	begin
		set @info_act = new.informe_actividades,
			@seg_soc = new.pago_seguridad_social;
            
            if lower(@info_act) not in ('si','no') or lower(@seg_soc) not in ('si','no') then
				SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Debe ingrese SI o NO en los campos de pago_seguridad_social e informe_actividades';
			end if;
	end $$;
delimiter ;


-- revisar que el numero de cuenta sea exactamente de 7 caracteres de longitud
drop trigger if exists tr_num_cuenta_up;
delimiter $$;
create trigger tr_num_cuenta_up before update on cuentadecobro for each row
	begin
		if length(new.numero_de_cuenta) != 7 then
			SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'El número de cuenta debe tener exactamente 7 numeros';
        end if;
    end $$;
delimiter ;

drop trigger if exists tr_num_cuenta_ins;
delimiter $$;
create trigger tr_num_cuenta_ins before insert on cuentadecobro for each row
	begin
		if length(new.numero_de_cuenta) != 7 then
			SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'El número de cuenta debe tener exactamente 7 numeros';
        end if;
    end $$;
delimiter ;


-- si se intenta modificar la fecha de inicio o final de los contratos, lo mismo en la fehca de cobro en cuenta de cobro , evitarlo lol https://www.educba.com/mysql-update-trigger/
-- puede ser: revisamos si dentro del update se estan actualizando las fechas, si es asi entonces cancelar el udpate o solo realizar el update de las demas cosas
drop trigger if exists fecha_inicio_contrato;
delimiter $$;
create trigger tr_impedir_cambio_fecha before update on contrato for each row
	begin 
		if old.fecha_inicio_contrato <> new.fecha_inicio_contrato or  old.fecha_final_contrato <> new.fecha_final_contrato then
			SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'No es posible cambiar las fechas';
		end if;
    end $$;
delimiter ;


