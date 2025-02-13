USE [STREAMING]
GO
/****** Object:  StoredProcedure [dbo].[sp_ImportarExcel]    Script Date: 12/03/2024 00:00:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_ImportarExcel] (@iNumUsuari INT= 0)
as
DECLARE @vConsulta VARCHAR(MAX), @vTablaLista nvarchar(150), @vExcel nvarchar(100), @vRutaExcel nvarchar(500)

-- OBTENCION DE LAS VARIABLES (@vExcel , @vTablaLista y @vRutaExcel) PARA LA CARGA DE LA INFORMACIÓN
select @vExcel = vNomExcel , @vTablaLista = vTablaLista, @vRutaExcel = vRutaExcel
from [dbo].[tTEM_ListaTemporal] where iNumUsuari = @iNumUsuari

-- DECLARAMOS LA RUTA
declare @vRutaLista nvarchar(max) = '''Excel 12.0;Database='+@vRutaExcel+'\'+@vExcel+'.xlsx;HDR=YES'''

/*
-- Se elimina en caso la tabla existe y se crea nuevamente la tabla que almacenará toda la información importada
SET @vConsulta='
					IF OBJECT_ID('''+@vTablaLista+''') IS NOT NULL BEGIN
						TRUNCATE TABLE '+replace(@vTablaLista,'tempdb..','')+';
					END;
				' 
PRINT @vConsulta
EXEC(@vConsulta)
*/

-- Importa la hoja 1 del Excel
SET @vConsulta='
				   IF OBJECT_ID('''+@vTablaLista+''') IS NOT NULL BEGIN
						TRUNCATE TABLE '+replace(@vTablaLista,'tempdb..','')+';
					END;

					INSERT INTO ' +replace(@vTablaLista,'tempdb..','')+ '
					SELECT 
						1				   ,    IdMovie			   ,
						show_id            ,    type               ,    title             ,    director          ,    cast              ,             
						country            ,    date_added         ,    release_year      ,    rating            ,    duration          ,             
						listed_in          ,    description        ,    director_nueva1   ,    director_nueva2   ,    director_nueva3   ,             
						director_nueva4    ,    director_nueva5    ,    director_nueva6   ,    director_nueva7   ,    director_nueva8   ,             
						director_nueva9    ,    director_nueva10   ,    director_nueva11  ,    director_nueva12  ,    director_nueva13  ,             
						cast_nueva1        ,    cast_nueva2        ,    cast_nueva3       ,    cast_nueva4       ,    cast_nueva5       ,             
						cast_nueva6        ,    cast_nueva7        ,    cast_nueva8       ,    cast_nueva9       ,    cast_nueva10      ,             
						cast_nueva11       ,    cast_nueva12       ,    cast_nueva13      ,    cast_nueva14      ,    cast_nueva15      ,             
						cast_nueva16       ,    cast_nueva17       ,    cast_nueva18      ,    cast_nueva19      ,    cast_nueva20      ,             
						cast_nueva21       ,    cast_nueva22       ,    cast_nueva23      ,    cast_nueva24      ,    cast_nueva25      ,             
						cast_nueva26       ,    cast_nueva27       ,    cast_nueva28      ,    cast_nueva29      ,    cast_nueva30      ,             
						cast_nueva31       ,    cast_nueva32       ,    cast_nueva33      ,    cast_nueva34      ,    cast_nueva35      ,             
						cast_nueva36       ,    cast_nueva37       ,    cast_nueva38      ,    cast_nueva39      ,    cast_nueva40      ,             
						cast_nueva41       ,    cast_nueva42       ,    cast_nueva43      ,    cast_nueva44      ,    cast_nueva45      ,             
						cast_nueva46       ,    cast_nueva47       ,    cast_nueva48      ,    cast_nueva49      ,    cast_nueva50      ,             
						country_nueva1     ,    country_nueva2     ,    country_nueva3    ,    country_nueva4    ,    country_nueva5    ,             
						country_nueva6     ,    country_nueva7     ,    country_nueva8    ,    country_nueva9    ,    country_nueva10   ,             
						country_nueva11    ,    country_nueva12    ,    listed_in_nueva1  ,    listed_in_nueva2  ,    listed_in_nueva3           
					FROM OPENROWSET(''Microsoft.ACE.OLEDB.12.0'',' +@vRutaLista+ ',''SELECT * FROM [Hoja1$]'')
				'
PRINT @vConsulta
EXEC(@vConsulta)

--Se muestra la cantidad de registros cargados
SET @vConsulta='
select concat(''Se insertaron '' , count(iIdRegistro) , '' Registros en Hoja 1'') Resultado,'''+@vRutaExcel+'\'+@vExcel+'.xlsx'' as Desde_Excel,'''+ @vTablaLista+ ' where iTabla = 1'' as A_Tabla from '+ @vTablaLista+ ' where iTabla = 1
'
EXEC(@vConsulta)