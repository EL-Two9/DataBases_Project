-- PAS UPDATE INTERFAZ NEATBENS

DROP PROCEDURE update_cargo;

Delimiter //
create procedure update_cargo (in id_numero int, in nombre varchar(40),in dpt int)
begin
update cargo set cargo_del_empleado = nombre where id_numero = id_cargo;
update cargo set id_departamento = dpt where id_numero = id_cargo;
end // Delimiter ;

call update_cargo(322,"AUTORIZACION Y CITAS",2);

Delimiter //
create procedure update_depar (in id_numero int, in nombre varchar(40))
begin
update departamento set nombre_departamento = nombre where id_numero = id_departamento;
end // Delimiter ;

call update_depar(1,"Administrativo");

select * from departamento where id_departamento=1;


Delimiter //
create procedure update_lug (in id_numero int, in nombre varchar(40))
begin
update lugarDeTrabajo set nombre_lugar_de_trabajo = nombre where id_numero = id_lugar_de_trabajo;
end // Delimiter ;

call update_lug(333,"carro");

select * from lugarDeTrabajo where id_lugar_de_trabajo = 333;
