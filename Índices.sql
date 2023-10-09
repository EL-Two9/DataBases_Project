use PagoEmpleados;
show index from contrato;
-- Se define la creacion de indices unicos para algunas columnas dentro de las tablas, estas fueron escogidas determinando cuales podrian
-- ser criterios importantes de busqueda, ademas se definió que los indices seran de tipo B-tree pues al generar arboles de busqueda 
-- equilibrados podemos encontrar la informacion de manera eficiente dentro de nuestra base de datos.
	
CREATE UNIQUE INDEX apellido ON empleado (apellido_empleado) USING btree; -- En la tabla empleado decidimos usar un nuevo indice en el apellido,
-- pues consideramos que podrian ser importantes las busquedas mediante los apellidos de los empleados.
	
CREATE INDEX fechaInicial ON contrato (fecha_inicio_contrato) USING btree; -- Definimos este indice con la fecha inicial de los contratos, pues
-- dentro de nuestro modelo es util conocer todos los contratos que se generaron en una fecha, ademas el indice no es unico pues varios 
-- contratos pueden ser generados en una misma fecha.
	
CREATE INDEX TotalCobro ON cuentadecobro (valor_total_a_cobrar) USING btree; -- Se definio este indice teniendo en cuenta que puede 
-- llegar a ser necesario hacer busquedas dependiendp del total a cobrar, pues dentro de nuestro proyecto se necesita de manera recurrente 
-- la busqueda de cuentas de cobro que cumplan con ciertas condiciones dadas. Tambien es importante destacar que es un indice no unico
-- pues varios empleados pueden llegar a tener el mismo total a cobrar.

-- Estos son los indices que consideramos pertinentes dentro de nuestro proyecto, pues las demas tablas ya contienen los indices suficientes 
-- para que sean eficientes dentro de la base de datos.