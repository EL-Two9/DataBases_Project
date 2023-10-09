-- PAS INSERT INTERFAZ NEATBENS

Delimiter //
create procedure insert_cargo (in id_numero int, in nombre varchar(50),in dpt int)
begin
insert into cargo values (id_numero,nombre,dpt);
end // Delimiter ;

call insert_cargo(500,"PRUEBA",2);

select * from cargo where id_cargo=500;

Delimiter //
create procedure insert_depar (in id_numero int, in nombre varchar(50))
begin
insert into departamento values (id_numero,nombre);
end // Delimiter ;

call insert_depar(500,"PRUEBA");

select * from departamento where id_departamento=500;



Delimiter //
create procedure insert_lug (in id_numero int, in nombre varchar(50))
begin
insert into lugarDeTrabajo values (id_numero,nombre);
end // Delimiter ;

call insert_lug(500,"PRUEBA");

select * from lugarDeTrabajo where id_lugar_de_trabajo=500;