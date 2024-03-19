
-- Creamos la BD donde vamos a trabajar
CREATE DATABASE STREAMING;

-- Nos posicionamos en la BD Creada
USE STREAMING;
GO

									--	________________________________________________________	--
									--		CREACIÓN DE TABLAS TEMPORALES Y DE CONFIGURACIÓN		--
									--	¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯	--

-- Se crea la tabla de configuracion de rutas para la IMPORTACIÓN de archivos EXCEL.
CREATE TABLE [dbo].[tTEM_ListaTemporal]
(
	iId				INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	FecIngreso		DATETIME Default GETDATE(),
	vRutaExcel		NVARCHAR(250) NOT NULL,
	vNomExcel		NVARCHAR(250) NOT NULL,
	vTablaLista		NVARCHAR(250) NOT NULL,
	iNumUsuari		INT NOT NULL,
);

-- Insertamos el Registro a la tabla [dbo].[tTEM_ListaTemporal]
insert into tTEM_ListaTemporal (vRutaExcel,vNomExcel,vTablaLista,iNumUsuari)
values ('D:\Examenes de Postulación\Delfosti\Plantilla','PlantillaBD','tTEM_ListaSmit',0)

-- Consultamos la tabla [dbo].[tTEM_ListaTemporal]
select * from tTEM_ListaTemporal


-- Se crea la tabla temporal que almacena la BD Inicial.
CREATE TABLE Tmp_ImpListaBD 
(	iTabla				   INT,				IdMovie				  INT,
	show_id                NVARCHAR (10),	type                   NVARCHAR (20),	title                  NVARCHAR (110),	director               NVARCHAR (500),	"cast"                 NVARCHAR (MAX),
	country                NVARCHAR (500),	date_added             DATETIME	,		release_year           NVARCHAR (4),    rating                 NVARCHAR (500),	duration               NVARCHAR (500),
	listed_in              NVARCHAR (500),	"description"          NVARCHAR (MAX),	director_nueva1        NVARCHAR (500),	director_nueva2        NVARCHAR (500),	director_nueva3        NVARCHAR (500),
	director_nueva4        NVARCHAR (500),	director_nueva5        NVARCHAR (500),	director_nueva6        NVARCHAR (500),	director_nueva7        NVARCHAR (500),	director_nueva8        NVARCHAR (500),
	director_nueva9        NVARCHAR (500),	director_nueva10       NVARCHAR (500),	director_nueva11       NVARCHAR (500),	director_nueva12       NVARCHAR (500),	director_nueva13       NVARCHAR (500),
	cast_nueva1            NVARCHAR (500),	cast_nueva2            NVARCHAR (500),	cast_nueva3            NVARCHAR (500),	cast_nueva4            NVARCHAR (500),	cast_nueva5            NVARCHAR (500),
	cast_nueva6            NVARCHAR (500),	cast_nueva7            NVARCHAR (500),	cast_nueva8            NVARCHAR (500),	cast_nueva9            NVARCHAR (500),	cast_nueva10           NVARCHAR (500),
	cast_nueva11           NVARCHAR (500),	cast_nueva12           NVARCHAR (500),	cast_nueva13           NVARCHAR (500),	cast_nueva14           NVARCHAR (500),   cast_nueva15          NVARCHAR (500),
	cast_nueva16           NVARCHAR (500),	cast_nueva17           NVARCHAR (500),	cast_nueva18           NVARCHAR (500),	cast_nueva19           NVARCHAR (500),	cast_nueva20           NVARCHAR (500),
	cast_nueva21           NVARCHAR (500),	cast_nueva22           NVARCHAR (500),	cast_nueva23           NVARCHAR (500),	cast_nueva24           NVARCHAR (500),	cast_nueva25           NVARCHAR (500),
	cast_nueva26           NVARCHAR (500),	cast_nueva27           NVARCHAR (500),	Cast_nueva28           NVARCHAR (500),	cast_nueva29           NVARCHAR (500),	cast_nueva30           NVARCHAR (500),
	cast_nueva31           NVARCHAR (500),	cast_nueva32           NVARCHAR (500),	cast_nueva33           NVARCHAR (500),	cast_nueva34           NVARCHAR (500),	cast_nueva35           NVARCHAR (500),
	cast_nueva36           NVARCHAR (500),	cast_nueva37           NVARCHAR (500),	cast_nueva38           NVARCHAR (500),	cast_nueva39           NVARCHAR (500),	cast_nueva40           NVARCHAR (500),
	cast_nueva41           NVARCHAR (500),	cast_nueva42           NVARCHAR (500),	cast_nueva43           NVARCHAR (500),	cast_nueva44           NVARCHAR (500),	cast_nueva45           NVARCHAR (500),
	cast_nueva46           NVARCHAR (500),	cast_nueva47           NVARCHAR (500),	cast_nueva48           NVARCHAR (500),	cast_nueva49           NVARCHAR (500),	cast_nueva50           NVARCHAR (500),
	country_nueva1         NVARCHAR (500),	country_nueva2         NVARCHAR (500),	country_nueva3         NVARCHAR (500),	country_nueva4         NVARCHAR (500),	country_nueva5         NVARCHAR (500),
	country_nueva6         NVARCHAR (500),	country_nueva7         NVARCHAR (500),	country_nueva8         NVARCHAR (500),	country_nueva9         NVARCHAR (500),	country_nueva10        NVARCHAR (500),
	country_nueva11        NVARCHAR (500),	country_nueva12        NVARCHAR (500),	listed_in_nueva1       NVARCHAR (500),	listed_in_nueva2       NVARCHAR (500),	listed_in_nueva3       NVARCHAR (500),
	iIdRegistro			   INT IDENTITY(1,1) NOT NULL
);



