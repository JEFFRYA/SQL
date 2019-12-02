-------------------------------------------------------------
-------------------------------------------------------------
-- USAMOS MASTER 
USE master
/* USAMOS sys.databases YA QUE CONTIENE UNA FILA DE BASES DE
DATOS EN LA INSTANCIA DE SQL.
OBTENEMOS SU ID, FECHA DE CREACION Y TIPO DE ACCESO */
SELECT name, database_id, create_date, user_access_desc
FROM sys.databases
-------------------------------------------------------------
-------------------------------------------------------------