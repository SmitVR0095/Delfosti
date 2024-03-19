
USE [STREAMING];
GO

--Ejecutamos el procedimiento
EXEC sp_ImportarExcel
GO

-- Consultamos
SELECT * FROM Tmp_ImpListaBD







