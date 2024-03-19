USE STREAMING;
GO

-- drop table PELICULAS
CREATE TABLE PELICULAS (
IdMovie			INT PRIMARY KEY,
CodMovie		NVARCHAR(20),
IdType			INT NOT NULL,
title 			NVARCHAR(500) NOT NULL,
IdDuration		INT NOT NULL,
IdRating		INT NOT NULL,
release_year	NVARCHAR(4),	
Description		VARCHAR(MAX)
);

CREATE TABLE TIPO (
IdType			INT IDENTITY(1,1) PRIMARY KEY,
Type			NVARCHAR(10) NOT NULL
);

CREATE TABLE DURACION (
IdDuration			INT IDENTITY(1,1) PRIMARY KEY,
Duration			NVARCHAR(10) NOT NULL
);

CREATE TABLE CLASIFICACION (
IdRating			INT IDENTITY(1,1) PRIMARY KEY,
Rating				NVARCHAR(10) NOT NULL
);
-------------------------------------------------------------------

CREATE TABLE CATEGORIA (
IdListed_in			INT IDENTITY(1,1) PRIMARY KEY,
Listed_in			NVARCHAR(30) NOT NULL
);

CREATE TABLE PAIS (
IdCountry			INT IDENTITY(1,1) PRIMARY KEY,
Country				NVARCHAR(25) NOT NULL
);


CREATE TABLE PELICULADETALLE (
IdPeriodo			INT NOT NULL,
IdMovieDetail		INT NOT NULL,
IdMovie				INT NOT NULL,
IdCountry			INT NOT NULL,
IdListed_in			INT NOT NULL,
IdDirector			INT NOT NULL,
IdAuthors			INT NOT NULL,
date_added			DATETIME,
PRIMARY KEY (IdPeriodo, IdMovieDetail),
UNIQUE (IdPeriodo, IdMovieDetail)
);


CREATE TABLE DIRECTOR (
IdDirector			INT IDENTITY(1,1) PRIMARY KEY,
Director			NVARCHAR(35) NOT NULL
);


CREATE TABLE AUTOR (
IdAuthors			INT IDENTITY(1,1) PRIMARY KEY,
Authors				NVARCHAR(120) NOT NULL
);

------------------------------------------------------------------- 

-- Agregamos el constructor que valida que el campo sea único
ALTER TABLE AUTOR
ADD CONSTRAINT uq_campo_unico_Autor UNIQUE (Authors);

ALTER TABLE DIRECTOR
ADD CONSTRAINT uq_campo_unico_Director UNIQUE (Director);

ALTER TABLE PAIS
ADD CONSTRAINT uq_campo_unico_Country UNIQUE (Country);

ALTER TABLE CATEGORIA
ADD CONSTRAINT uq_campo_unico_Listed UNIQUE (Listed_in);

ALTER TABLE CLASIFICACION
ADD CONSTRAINT uq_campo_unico_Rating UNIQUE (Rating);

ALTER TABLE DURACION
ADD CONSTRAINT uq_campo_unico_Duration UNIQUE (Duration);

ALTER TABLE TIPO
ADD CONSTRAINT uq_campo_unico_Type UNIQUE (Type);

ALTER TABLE PELICULAS
ADD CONSTRAINT uq_campo_unico_Pelicula UNIQUE (CodMovie);



