-----------------------------------------------------------------------
-----------------------------------------------------------------------
/* EN ESTA CONSULTA NECESITAMOS VER UN ANTES Y UN DESPUES DE LOS DATOS
ANTES DE ACTUALIZARLOS PARA VER SI LO QUE QUEREMOS HACER O EJECUTAR ES 
CORRECGO */
-- INICIAMOS LA TRANSACCION
BEGIN TRAN
	-- VISUALIZAMOS EL ESTADO DE LOS DATOS ANTES DE ACTUALIZARLOS
	select * from EMPLEADO where id_empleado = 3
	-- ACTUALIZAMOS LOS DATOS
	update EMPLEADO SET nombre = 'OSMAR JOSÉ'
	where id_empleado = 3
	-- VISUALIZAMOS EL ESTADO DE LOS DATOS DESPUES DE ACTUALIZARLOS
	select * from EMPLEADO where id_empleado = 3
-- REVERTIMOS LOS CAMBIOS REALIZADOS GRACIAS AL ROLLBACK
ROLLBACK TRAN
-----------------------------------------------------------------------
-----------------------------------------------------------------------
/* EN ESTA CONSULTA NECESITAMOS VER LA CANTIDAD DE EMPLEADOS ANTES Y 
DESPUES DE ELIMINAR LOS REGISTROS  */
-- INICIAMOS LA TRANSACCION
BEGIN TRAN
	-- VISUALIZAMOS EL ESTADO DE LOS DATOS ANTES DE ELIMINARLOS
	SELECT (COUNT (id_empleado)) AS [CANTIDAD DE EMPLEADOS] FROM EMPLEADO
	-- ELIMINAMOS LOS DATOS
	DELETE FROM EMPLEADO
	WHERE id_empleado = 3
	-- VISUALIZAMOS EL ESTADO DE LOS DATOS DESPUES DE ELIMINARLOS
	SELECT (COUNT (id_empleado)) AS [CANTIDAD DE EMPLEADOS] FROM EMPLEADO
ROLLBACK TRAN
-----------------------------------------------------------------------
-----------------------------------------------------------------------