-- Updates: 
-- v_contador : cambiar el numero de cuenta de alguien
update v_contador set numero_de_cuenta = 4691436 where id_empleado = 11442051;
	
-- v_admin_contratos : aumentar en un 10% el valor mensual del contrato en aquellos empleados que tengan más de 10 horas al día de trabajo
update v_admin_contratos set valor_mensual_contrato = valor_mensual_contrato*1.1 where horas_de_trabajo_al_dia > 10;

-- v_admin_contratos : aumnetar en 1 las horas de trabajo de los empleados que tengan un numero de meses a cobrar > 4
update v_admin_contratos set horas_de_trabajo_al_dia = horas_de_trabajo_al_dia+1 where cargo_del_empleado like '%auxiliar%' and valor_mensual_contrato > 2000000;

-- admin : cambiar el departamento a 1 en todos los cargos que contengan la palabra factura
update cargo set id_departamento = 1 where cargo_del_empleado like '%factura%';

-- admin : cambiar el lugar de trabajo a oficina de todos los empleados del departamento 1 y que sean auxiliares
update empleado natural join cargo natural join departamento set id_lugar_de_trabajo=(select id_lugar_de_trabajo from lugardetrabajo where lower(nombre_lugar_de_trabajo) = 'oficina') where id_departamento=2 and cargo_del_empleado like '%auxiliar%';


-- Deletes: 
-- eliminar a los empleados que no tengan informe de actividades y que sus horas de trabajo al dia sean < 6
delete from empleado where id_empleado in (select id_empleado from contrato natural join cuentadecobro where lower(informe_actividades) = 'no' and horas_de_trabajo_al_dia < 6);

-- eliminar a todos los empleado del departamento 2 que cobren mas de 10'000,000
delete from empleado where id_empleado in (select id_empleado from contrato natural join departamento natural join cargo where id_departamento = 2 and  valor_mensual_contrato > 10000000);

-- eliminar los contratos que tengan menos de 5 horas de trabajo al dia y que sean del departamento 1
delete from contrato where id_empleado in (select id_empleado from empleado natural join cargo where id_departamento = 2 and horas_de_trabajo_al_dia < 5);

-- eliminar los cargos que contengan la palabra factura
delete from cargo where lower(cargo_del_empleado) like '%factura%';

-- delete from empleado where id_empleado in (select id_empleado from empleado natural join cargo where lower(cargo_del_empleado) like '%factura%');

-- eliminar todos los empleado cuyo nombre empieza con y su apellido termine en a
delete from empleado where lower(nombre_empleado) like 'e%' and lower(apellido_empleado) like 'z%';





