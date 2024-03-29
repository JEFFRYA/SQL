------------------------------------------------------------------
------------------------------------------------------------------
-- USAMOS MASTER PARA PODER ACTUALIZAR EL NOMBRE DE LA BD
USE master
GO
/* USAMOS MULTI_USER PARA QUE PUEDAN ACCEDER MUCHAS PERSONAS 
A LA BD SIMULTANEAMENTE */
ALTER DATABASE EMPRESAS SET MULTI_USER WITH ROLLBACK IMMEDIATE
GO
/* sp_renamedb SIRVE PARA CAMBIAR EL NOMBRE DE LA BD
SOLO PONEMOS PRIMERO EN NOMBRE ACTUAL DE LA BD
Y LUEGO EL NUEVO NOMBRE */
EXEC sp_renamedb N'EMPRESAS', N'EMPRESA'
------------------------------------------------------------------
------------------------------------------------------------------

/* EN EL CASO DE SINGLE USER SOLO SE USA PARA QUE PUEDA ACCEDER 
UNA UNICA PERSONA DE MANERA 
EXCLUSIVA ( SE USA EN MANTENIMIENTOS DE BD ) */

/* LA OPCI�N DE TERMINACI�N WITH ROLLBACK IMMEDIATE 
SE ESPECIFICA EN LA PRIMERA INSTRUCCI�N ALTER DATABASE. 
ESTO HAR� QUE TODAS LAS TRANSACCIONES IMCOMPLETAS SE REVIERTAN
Y QUE EL RESTO DE LAS CONEXIONES A LA BASE DE DATOS EMPRESAS 
SE DESCONECTEN DE INMEDIATO. */
ALTER DATABASE EMPRESAS SET SINGLE_USER WITH ROLLBACK IMMEDIATE
------------------------------------------------------------------
------------------------------------------------------------------