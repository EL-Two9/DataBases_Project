-- PAS Y Funciones

-- Procedimiento para que los empleados consulten sus datos 
drop procedure consulta;
Delimiter //
create procedure consulta_empleado(in numero int)
begin
DECLARE var_id_cargo INT;
DECLARE var_id_lugar_de_trabajo INT;
set var_id_cargo= (select id_cargo from empleado where id_empleado = numero);
select * from (empleado NATURAL JOIN cargo) where id_empleado = numero AND id_cargo= var_id_cargo;
end // Delimiter ;

call consulta_empleado(20715966);
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'MIRYAN JOHANA'@'localhost';
----------------------------------------------------------------------------------------------------------------
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ABRAHAM YOBANY'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ALBA LUCIA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ALEXANDER'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ALEXANDRA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ALEXANDRA MILENA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANA XIMENA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANDREI MAURICIO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANGEL EDUARDO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANGELA MIREYA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANGELA PATRICIA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANGIE CAROLINA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANGIE KATHERINE'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANGIE VANESA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANYI CONSTANZA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ANYI GABRIELA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'BARBARA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'BRAYAN MANUEL'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'BRIGITTE VANESSA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'CARLOS ALBERTO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'CARMEN SOFIA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'CAROL SOFIA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'CAROLINA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'CENAIDA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'CINDY BIVIANA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'CLAUDIA ESMERALDA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'CLAUDIA MARIA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'CRISTIAN ANDRES'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'DAYANA MARCELA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'DEISY FABIOLO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'DIANA ALEJANDRA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'DILAN ANDRES'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'EDITH JOHANNA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'EDUARDO SANTOS'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ELIANA PATRICIA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'ESTEFANY'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'FERNANDO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'FREDY ORLANDO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'GERALDINE JULIETH'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'GIOVANI'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'GLEIDYS ALEXANDRA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'GLORIA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'HENRY ANTONIO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'INGRI KATHERINE'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'INGRID PAOLA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'INGRID YURANI'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'IVONNE ADRIANA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JENY PAOLA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JESICA BRIGITTE'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JESUS ALBERTO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JHONATAN'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JIMENA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JOHANA KATERINE'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JORGE ALEXANDER'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JORGE ANDRES ARCADIO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JORGE ANDRES ARCADIO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JORGE HERNANDO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JORGE LUIS'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JOSE GILDARDO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JOSE OVER'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JOSEF'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JUAN CARLOS"'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JUAN DAVID'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JUAN SEBASTIAN MEDELLIN'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'JUAN SEBASTIAN GUERRERO'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'KAREN MELISSA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'KAREN TATIANA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'KAREN YULIETH'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'KATHERINE'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'KEVIN ALEXANDER'@'localhost'; 
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'KEYLA MARCELA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LAURA VALENTINA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LEIDY CAROLINA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LEIDY JOHANA JIMENEZ'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LEIDY JOHANA CRUZ'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LEONARD JESUS'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LIBIA ESPERANZA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LIDA YANIBE'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LIDIA VERONICA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LIGIA OBEIDA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LINA JOHANA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LINA MARCELA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LIZANDRA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LORENA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LUIS DAVID'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LUZ ANDREA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LUZ CARLINA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LUZ HELENA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'LUZ MARINA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'MARGARITA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'MARIA DANIELA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'MARIA DEL PILAR'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'MARIA EUGENIA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'MARIA FERNANDA'@'localhost';
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_empleado TO 'MARIA ISABEL'@'localhost';

-----------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------

-- Procedimiento para que el ADMIN y el Contador consulte los contratos con la cédula del empleado
drop procedure consulta_contrato;
Delimiter //
create procedure consulta_contrato(in numero int)
begin
DECLARE var_id_contrato INT;
set var_id_contrato = (select id_contrato from contrato where id_empleado = numero);
select * from contrato where id_empleado = numero;
end // Delimiter ;
call consulta_contrato(19325758);
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_contrato TO 'Contador'@'localhost';

------------------------------------------------------------------------------------------------------------------------

-- Procedimiento para que el Contador consulte las cuentas de cobro

drop procedure consulta_cuenta ;

Delimiter //
create procedure consulta_cuenta (in numero int)
begin
DECLARE var_id_contrato INT;
DECLARE var_id_contrato_cuenta INT;
set var_id_contrato = (select id_contrato from contrato where id_empleado = numero);
select var_id_contrato;
set var_id_contrato_cuenta = (select id_cuenta_de_cobro from cuentaDeCobro where id_contrato = var_id_contrato );
select * from cuentaDeCobro where id_cuenta_de_cobro=var_id_contrato_cuenta;
end // Delimiter ;
call consulta_cuenta(19325758);
GRANT EXECUTE ON PROCEDURE PagoEmpleados.consulta_cuenta TO 'Contador'@'localhost';
------------------------------------------------------------------------------------------------------------------------

-- Procedimiento para borrar empleados que hayan cumplido su contrato

drop procedure borrar_empleado;

Delimiter //
create procedure borrar_empleado(in numero int)
begin
delete from empleado where id_empleado = numero;
end // Delimiter ;

-- call borrar_empleado(19325758);

-- ------------------------------------------------------------------------------------------------------------------------

-- Procedimiento para actualizar el pago de seguridad social en la cuenta de cobro desde el contador

drop procedure seguridad_social ;

Delimiter //
create procedure seguridad_social (in numero int, in valor_seguridad varchar(2))
begin
DECLARE var_id_contrato INT;
DECLARE var_id_contrato_cuenta INT;
set var_id_contrato = (select id_contrato from contrato where id_empleado = numero);
set var_id_contrato_cuenta = (select id_cuenta_de_cobro from cuentaDeCobro where id_contrato = var_id_contrato );
update cuentaDeCobro set pago_seguridad_social = valor_seguridad where id_cuenta_de_cobro=var_id_contrato_cuenta;
select * from cuentaDeCobro where id_cuenta_de_cobro=var_id_contrato_cuenta;
end // Delimiter ;
call seguridad_social(19325758,'No');
GRANT EXECUTE ON PROCEDURE PagoEmpleados.seguridad_social TO 'Contador'@'localhost';

-- ------------------------------------------------------------------------------------------------------------------------

-- Procedimiento para actualizar el informe de actividades en la cuenta de cobro desde el contador

drop procedure informe_act ;

Delimiter //
create procedure informe_act (in numero int, in valor_imforme varchar(2))
begin
DECLARE var_id_contrato INT;
DECLARE var_id_contrato_cuenta INT;
set var_id_contrato = (select id_contrato from contrato where id_empleado = numero);
set var_id_contrato_cuenta = (select id_cuenta_de_cobro from cuentaDeCobro where id_contrato = var_id_contrato );
update cuentaDeCobro set informe_actividades = valor_imforme where id_cuenta_de_cobro=var_id_contrato_cuenta;
select * from cuentaDeCobro where id_cuenta_de_cobro=var_id_contrato_cuenta;
end // Delimiter ;
call informe_act(19325758,'No');
GRANT EXECUTE ON PROCEDURE PagoEmpleados.informe_act TO 'Contador'@'localhost';

------------------------------------------------------------------------------------------------------------------------
