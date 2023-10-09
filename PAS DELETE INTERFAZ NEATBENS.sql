-- -- PAS DELETE INTERFAZ NEATBENS

Delimiter //
create procedure borrar_cargo(in numero int)
begin
delete from cargo where id_cargo = numero;
end // Delimiter ;
call borrar_cargo(500);
select * from cargo where id_cargo=500;


Delimiter //
create procedure borrar_depa(in numero int)
begin
delete from departamento where id_departamento = numero;
end // Delimiter ;
call borrar_depa(500);
select * from departamento where id_departamento=500;


Delimiter //
create procedure borrar_lug(in numero int)
begin
delete from lugarDeTrabajo where id_lugar_de_trabajo = numero;
end // Delimiter ;
call borrar_lug(500);
select * from lugarDeTrabajo where id_lugar_de_trabajo=500;