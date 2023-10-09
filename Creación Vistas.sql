create view v_empleado as select 
	concat(nombre_empleado,' ' ,apellido_empleado) as nombre, 
    cargo_del_empleado, 
    nombre_departamento, 
    nombre_lugar_de_trabajo, 
    concat('$', format(valor_mensual_contrato, 2)) as sueldo_mensual, 
    concat('$', format(valor_mensual_contrato*12, 2)) as sueldo_anual, 
    date_format(fecha_en_la_que_cobra, '%M - %d - %Y')  as fecha_de_cobro ,
    numero_de_cuenta ,
    concat(year(fecha_inicio_contrato),' - ' ,year(fecha_final_contrato)) as inicio_final_contrato 
from empleado natural join departamento natural join cargo natural join lugarDeTrabajo natural join contrato natural join cuentadecobro;
 
create view v_contador as select
	id_cuenta_de_cobro, 
    numero_de_cuenta, 
    concat(nombre_empleado,' ' ,apellido_empleado) as nombre_empleado,
    id_empleado as cedula_empleado,
    pago_seguridad_social,
    informe_actividades,
    date_format(fecha_en_la_que_cobra, '%M - %d - %Y') as fecha_de_cobro,
    numero_meses_a_cobrar,
    concat('$', format(valor_total_a_cobrar, 2)) as valor_total_cobro,
    concat('$', format(valor_mensual_contrato, 2)) as valor_mensual_contrato,
    concat('$', format(valor_mensual_contrato*12, 2)) as sueldo_anual,
    date_format(fecha_inicio_contrato, '%M - %d - %Y') as inicio_contrato,
    date_format(fecha_final_contrato, '%M - %d - %Y') as final_contrato,
    horas_de_trabajo_al_dia
from contrato natural join empleado natural join departamento natural join cargo natural join lugardetrabajo natural join cuentadecobro;

create view v_admin_contrato as select
	id_contrato,
	id_empleado as cedula_empleado,
    concat(nombre_empleado,' ' ,apellido_empleado) as nombre_empleado,
    cargo_del_empleado,
    nombre_departamento,
    nombre_lugar_de_trabajo,
    concat('$', format(valor_mensual_contrato, 2)) as valor_mensual_contrato,
    concat('$', format(valor_mensual_contrato*12, 2)) as sueldo_anual,
    horas_de_trabajo_al_dia,
    date_format(fecha_inicio_contrato, '%M - %d - %Y') as inicio_contrato,
    date_format(fecha_final_contrato, '%M - %d - %Y') as final_contrato
from contrato natural join cargo natural join empleado natural join departamento natural join lugardetrabajo;
