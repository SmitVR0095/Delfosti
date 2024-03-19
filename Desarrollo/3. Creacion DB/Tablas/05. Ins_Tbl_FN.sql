USE STREAMING;
GO
------------------------------------------------------------------------------------


SELECT * FROM  [dbo].[TIPO]
SELECT * FROM  [dbo].[AUTOR]
SELECT * FROM  [dbo].[CATEGORIA]
SELECT * FROM  [dbo].[CLASIFICACION]
SELECT * FROM  [dbo].[DIRECTOR]
SELECT * FROM  [dbo].[PAIS]
SELECT * FROM  [dbo].[PELICULADETALLE]
SELECT * FROM  [dbo].[PELICULAS]
SELECT * FROM  [dbo].[DURACION]


							--	__________________________________	--
							--	   Armamos las consultas previas	--
							--	¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯	--

-- La tabla PELICULAS
SELECT A.IdMovie
	 , A.show_id
	 , B.IdType
	 , A.title
	 , c.IdDuration
	 , D.IdRating
	 , A.release_year
	 , A.Description
FROM Tmp_ImpListaBD A
INNER JOIN TIPO B ON A.type=B.type
INNER JOIN DURACION C ON A.duration=C.duration
INNER JOIN CLASIFICACION D ON A.Rating=D.Rating  
--------------------------------------------------------------------------------------------------------------------

-- La tabla TIPO
SELECT distinct type
FROM Tmp_ImpListaBD

-- La tabla DURACION
SELECT distinct duration
FROM Tmp_ImpListaBD

-- La tabla CLASIFICACION
SELECT distinct Rating FROM Tmp_ImpListaBD
--------------------------------------------------------------------------------------------------------------------

-- La tabla CATEGORIA
SELECT distinct listed_in_nueva1 AS listed_in FROM Tmp_ImpListaBD WHERE listed_in_nueva1 IS NOT NULL UNION
SELECT distinct listed_in_nueva2 AS listed_in  FROM Tmp_ImpListaBD WHERE listed_in_nueva2 IS NOT NULL UNION
SELECT distinct listed_in_nueva3 AS listed_in FROM Tmp_ImpListaBD WHERE listed_in_nueva3 IS NOT NULL


-- La tabla PAIS
SELECT distinct country_nueva1	AS country FROM Tmp_ImpListaBD WHERE country_nueva1  IS NOT NULL UNION
SELECT distinct country_nueva2	AS country FROM Tmp_ImpListaBD WHERE country_nueva2  IS NOT NULL UNION
SELECT distinct country_nueva3	AS country FROM Tmp_ImpListaBD WHERE country_nueva3  IS NOT NULL UNION
SELECT distinct country_nueva4	AS country FROM Tmp_ImpListaBD WHERE country_nueva4  IS NOT NULL UNION
SELECT distinct country_nueva5	AS country FROM Tmp_ImpListaBD WHERE country_nueva5  IS NOT NULL UNION
SELECT distinct country_nueva6	AS country FROM Tmp_ImpListaBD WHERE country_nueva6  IS NOT NULL UNION
SELECT distinct country_nueva7	AS country FROM Tmp_ImpListaBD WHERE country_nueva7  IS NOT NULL UNION
SELECT distinct country_nueva8	AS country FROM Tmp_ImpListaBD WHERE country_nueva8  IS NOT NULL UNION
SELECT distinct country_nueva9	AS country FROM Tmp_ImpListaBD WHERE country_nueva9  IS NOT NULL UNION
SELECT distinct country_nueva10	AS country FROM Tmp_ImpListaBD WHERE country_nueva10 IS NOT NULL UNION
SELECT distinct country_nueva11	AS country FROM Tmp_ImpListaBD WHERE country_nueva11 IS NOT NULL UNION
SELECT distinct country_nueva12 AS country FROM Tmp_ImpListaBD WHERE country_nueva12 IS NOT NULL

-- La tabla DIRECTOR
SELECT distinct director_nueva1 AS director FROM Tmp_ImpListaBD WHERE director_nueva1  IS NOT NULL UNION
SELECT distinct director_nueva2 AS director FROM Tmp_ImpListaBD WHERE director_nueva2  IS NOT NULL UNION
SELECT distinct director_nueva3 AS director FROM Tmp_ImpListaBD WHERE director_nueva3  IS NOT NULL UNION
SELECT distinct director_nueva4 AS director FROM Tmp_ImpListaBD WHERE director_nueva4  IS NOT NULL UNION
SELECT distinct director_nueva5 AS director FROM Tmp_ImpListaBD WHERE director_nueva5  IS NOT NULL UNION
SELECT distinct director_nueva6 AS director FROM Tmp_ImpListaBD WHERE director_nueva6  IS NOT NULL UNION
SELECT distinct director_nueva7 AS director FROM Tmp_ImpListaBD WHERE director_nueva7  IS NOT NULL UNION
SELECT distinct director_nueva8 AS director FROM Tmp_ImpListaBD WHERE director_nueva8  IS NOT NULL UNION
SELECT distinct director_nueva9 AS director FROM Tmp_ImpListaBD WHERE director_nueva9  IS NOT NULL UNION
SELECT distinct director_nueva10 AS director FROM Tmp_ImpListaBD WHERE director_nueva10  IS NOT NULL UNION
SELECT distinct director_nueva11 AS director FROM Tmp_ImpListaBD WHERE director_nueva11  IS NOT NULL UNION
SELECT distinct director_nueva12 AS director FROM Tmp_ImpListaBD WHERE director_nueva12  IS NOT NULL UNION
SELECT distinct director_nueva13 AS director FROM Tmp_ImpListaBD WHERE director_nueva13  IS NOT NULL 

-- La tabla AUTOR
SELECT distinct cast_nueva1 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva1  IS NOT NULL UNION
SELECT distinct cast_nueva2 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva2  IS NOT NULL UNION
SELECT distinct cast_nueva3 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva3  IS NOT NULL UNION
SELECT distinct cast_nueva4 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva4  IS NOT NULL UNION
SELECT distinct cast_nueva5 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva5  IS NOT NULL UNION
SELECT distinct cast_nueva6 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva6  IS NOT NULL UNION
SELECT distinct cast_nueva7 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva7  IS NOT NULL UNION
SELECT distinct cast_nueva8 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva8  IS NOT NULL UNION
SELECT distinct cast_nueva9 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva9  IS NOT NULL UNION
SELECT distinct cast_nueva10 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva10  IS NOT NULL UNION
SELECT distinct cast_nueva11 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva11  IS NOT NULL UNION
SELECT distinct cast_nueva12 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva12  IS NOT NULL UNION
SELECT distinct cast_nueva13 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva13  IS NOT NULL UNION
SELECT distinct cast_nueva14 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva14  IS NOT NULL UNION
SELECT distinct cast_nueva15 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva15  IS NOT NULL UNION
SELECT distinct cast_nueva16 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva16  IS NOT NULL UNION
SELECT distinct cast_nueva17 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva17  IS NOT NULL UNION
SELECT distinct cast_nueva18 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva18  IS NOT NULL UNION
SELECT distinct cast_nueva19 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva19  IS NOT NULL UNION
SELECT distinct cast_nueva20 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva20  IS NOT NULL UNION
SELECT distinct cast_nueva21 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva21  IS NOT NULL UNION
SELECT distinct cast_nueva22 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva22  IS NOT NULL UNION
SELECT distinct cast_nueva23 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva23  IS NOT NULL UNION
SELECT distinct cast_nueva24 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva24  IS NOT NULL UNION
SELECT distinct cast_nueva25 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva25  IS NOT NULL UNION
SELECT distinct cast_nueva26 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva26  IS NOT NULL UNION
SELECT distinct cast_nueva27 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva27  IS NOT NULL UNION
SELECT distinct cast_nueva28 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva28  IS NOT NULL UNION
SELECT distinct cast_nueva29 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva29  IS NOT NULL UNION
SELECT distinct cast_nueva30 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva30  IS NOT NULL UNION
SELECT distinct cast_nueva31 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva31  IS NOT NULL UNION
SELECT distinct cast_nueva32 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva32  IS NOT NULL UNION
SELECT distinct cast_nueva33 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva33  IS NOT NULL UNION
SELECT distinct cast_nueva34 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva34  IS NOT NULL UNION
SELECT distinct cast_nueva35 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva35  IS NOT NULL UNION
SELECT distinct cast_nueva36 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva36  IS NOT NULL UNION
SELECT distinct cast_nueva37 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva37  IS NOT NULL UNION
SELECT distinct cast_nueva38 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva38  IS NOT NULL UNION
SELECT distinct cast_nueva39 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva39  IS NOT NULL UNION
SELECT distinct cast_nueva40 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva40  IS NOT NULL UNION
SELECT distinct cast_nueva41 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva41  IS NOT NULL UNION
SELECT distinct cast_nueva42 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva42  IS NOT NULL UNION
SELECT distinct cast_nueva43 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva43  IS NOT NULL UNION
SELECT distinct cast_nueva44 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva44  IS NOT NULL UNION
SELECT distinct cast_nueva45 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva45  IS NOT NULL UNION
SELECT distinct cast_nueva46 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva46  IS NOT NULL UNION
SELECT distinct cast_nueva47 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva47  IS NOT NULL UNION
SELECT distinct cast_nueva48 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva48  IS NOT NULL UNION
SELECT distinct cast_nueva49 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva49  IS NOT NULL UNION
SELECT distinct cast_nueva50 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva50  IS NOT NULL 


SELECT A.IdMovie,A.date_added 
FROM Tmp_ImpListaBD A

SELECT IdMovie,date_added, ColumnName,ColumnValue 
INTO #TBL_PAIS --> 10725 Registros
FROM Tmp_ImpListaBD
UNPIVOT
(
  ColumnValue FOR ColumnName IN (
									country_nueva1	 ,
									country_nueva2	 ,
									country_nueva3	 ,
									country_nueva4	 ,
									country_nueva5	 ,
									country_nueva6	 ,
									country_nueva7	 ,
									country_nueva8	 ,
									country_nueva9	 ,
									country_nueva10	 ,
									country_nueva11	 ,
									country_nueva12  
								 )
) AS unpivoted;

SELECT IdMovie,date_added, ColumnName,ColumnValue --10725
INTO #TBL_CATEGORIA --> 1911 Registros
FROM Tmp_ImpListaBD
UNPIVOT
(
  ColumnValue FOR ColumnName IN (
									listed_in_nueva1,
									listed_in_nueva2,
									listed_in_nueva3
								 )
) AS unpivoted;


SELECT IdMovie,date_added, ColumnName,ColumnValue --10725
INTO #TBL_DIRECTOR --> 9506 Registros
FROM Tmp_ImpListaBD
UNPIVOT
(
  ColumnValue FOR ColumnName IN (
									director_nueva1	 ,
									director_nueva2	 ,
									director_nueva3	 ,
									director_nueva4	 ,
									director_nueva5	 ,
									director_nueva6	 ,
									director_nueva7	 ,
									director_nueva8	 ,
									director_nueva9	 ,
									director_nueva10 ,
									director_nueva11 ,
									director_nueva12 ,
									director_nueva13 
								 )
) AS unpivoted;

SELECT IdMovie,date_added, ColumnName,ColumnValue
INTO #TBL_AUTOR --> 64220 Registros
FROM Tmp_ImpListaBD
UNPIVOT
(
  ColumnValue FOR ColumnName IN (
									cast_nueva1	  ,
									cast_nueva2	  ,
									cast_nueva3	  ,
									cast_nueva4	  ,
									cast_nueva5	  ,
									cast_nueva6	  ,
									cast_nueva7	  ,
									cast_nueva8	  ,
									cast_nueva9	  ,
									cast_nueva10  ,
									cast_nueva11  ,
									cast_nueva12  ,
									cast_nueva13  ,
									cast_nueva14  ,
									cast_nueva15  ,
									cast_nueva16  ,
									cast_nueva17  ,
									cast_nueva18  ,
									cast_nueva19  ,
									cast_nueva20  ,
									cast_nueva21  ,
									cast_nueva22  ,
									cast_nueva23  ,
									cast_nueva24  ,
									cast_nueva25  ,
									cast_nueva26  ,
									cast_nueva27  ,
									cast_nueva28  ,
									cast_nueva29  ,
									cast_nueva30  ,
									cast_nueva31  ,
									cast_nueva32  ,
									cast_nueva33  ,
									cast_nueva34  ,
									cast_nueva35  ,
									cast_nueva36  ,
									cast_nueva37  ,
									cast_nueva38  ,
									cast_nueva39  ,
									cast_nueva40  ,
									cast_nueva41  ,
									cast_nueva42  ,
									cast_nueva43  ,
									cast_nueva44  ,
									cast_nueva45  ,
									cast_nueva46  ,
									cast_nueva47  ,
									cast_nueva48  ,
									cast_nueva49  ,
									cast_nueva50  
								 )
) AS unpivoted;


SELECT DISTINCT  -->200136
CONCAT(YEAR(A.date_added), RIGHT('0' + CONVERT(VARCHAR(2), MONTH(A.date_added)), 2)) iPeriodo,
A.IdMovie,A.date_added,A.ColumnValue AS Autor,
B.ColumnValue AS Categoria,C.ColumnValue AS Pais,
D.ColumnValue AS Director
INTO #TBL_DETPELI
FROM #TBL_AUTOR					A	--> 64220
LEFT JOIN #TBL_CATEGORIA		B	--> 19111
ON A.IdMovie=b.IdMovie
LEFT JOIN #TBL_PAIS				C	--> 10725
ON b.IdMovie=c.IdMovie
LEFT JOIN #TBL_DIRECTOR			D	--> 9506
ON c.IdMovie=d.IdMovie
ORDER BY A.IdMovie

SELECT A.iPeriodo,
ROW_NUMBER() OVER(PARTITION BY A.iPeriodo ORDER BY A.iPeriodo, A.IdMovie) IdMovieDetail,
A.IdMovie, D.IdCountry, C.IdListed_in, E.IdDirector, B.IdAuthors, A.date_added
FROM #TBL_DETPELI A
INNER JOIN AUTOR B ON A.Autor=B.Authors
INNER JOIN CATEGORIA C ON A.Categoria=C.Listed_in
INNER JOIN PAIS D ON A.Pais=D.Country
INNER JOIN DIRECTOR E ON A.Director=E.Director



--------------------------------------------------------------------------------------------------------------------

						--	__________________________________	--
						--		  Insertamos a la tablas		--
						--	¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯	--
insert into [dbo].[TIPO] (Type)
SELECT distinct type
FROM Tmp_ImpListaBD 

insert into [dbo].[DURACION]
SELECT distinct duration
FROM Tmp_ImpListaBD 

insert into CLASIFICACION
SELECT distinct Rating 
FROM Tmp_ImpListaBD

insert into CATEGORIA
SELECT distinct listed_in_nueva1 AS listed_in FROM Tmp_ImpListaBD WHERE listed_in_nueva1 IS NOT NULL UNION
SELECT distinct listed_in_nueva2 AS listed_in  FROM Tmp_ImpListaBD WHERE listed_in_nueva2 IS NOT NULL UNION
SELECT distinct listed_in_nueva3 AS listed_in FROM Tmp_ImpListaBD WHERE listed_in_nueva3 IS NOT NULL

insert into PAIS
SELECT distinct country_nueva1	AS country FROM Tmp_ImpListaBD WHERE country_nueva1  IS NOT NULL UNION
SELECT distinct country_nueva2	AS country FROM Tmp_ImpListaBD WHERE country_nueva2  IS NOT NULL UNION
SELECT distinct country_nueva3	AS country FROM Tmp_ImpListaBD WHERE country_nueva3  IS NOT NULL UNION
SELECT distinct country_nueva4	AS country FROM Tmp_ImpListaBD WHERE country_nueva4  IS NOT NULL UNION
SELECT distinct country_nueva5	AS country FROM Tmp_ImpListaBD WHERE country_nueva5  IS NOT NULL UNION
SELECT distinct country_nueva6	AS country FROM Tmp_ImpListaBD WHERE country_nueva6  IS NOT NULL UNION
SELECT distinct country_nueva7	AS country FROM Tmp_ImpListaBD WHERE country_nueva7  IS NOT NULL UNION
SELECT distinct country_nueva8	AS country FROM Tmp_ImpListaBD WHERE country_nueva8  IS NOT NULL UNION
SELECT distinct country_nueva9	AS country FROM Tmp_ImpListaBD WHERE country_nueva9  IS NOT NULL UNION
SELECT distinct country_nueva10	AS country FROM Tmp_ImpListaBD WHERE country_nueva10 IS NOT NULL UNION
SELECT distinct country_nueva11	AS country FROM Tmp_ImpListaBD WHERE country_nueva11 IS NOT NULL UNION
SELECT distinct country_nueva12 AS country FROM Tmp_ImpListaBD WHERE country_nueva12 IS NOT NULL

insert into DIRECTOR
SELECT distinct director_nueva1 AS director FROM Tmp_ImpListaBD WHERE director_nueva1  IS NOT NULL UNION
SELECT distinct director_nueva2 AS director FROM Tmp_ImpListaBD WHERE director_nueva2  IS NOT NULL UNION
SELECT distinct director_nueva3 AS director FROM Tmp_ImpListaBD WHERE director_nueva3  IS NOT NULL UNION
SELECT distinct director_nueva4 AS director FROM Tmp_ImpListaBD WHERE director_nueva4  IS NOT NULL UNION
SELECT distinct director_nueva5 AS director FROM Tmp_ImpListaBD WHERE director_nueva5  IS NOT NULL UNION
SELECT distinct director_nueva6 AS director FROM Tmp_ImpListaBD WHERE director_nueva6  IS NOT NULL UNION
SELECT distinct director_nueva7 AS director FROM Tmp_ImpListaBD WHERE director_nueva7  IS NOT NULL UNION
SELECT distinct director_nueva8 AS director FROM Tmp_ImpListaBD WHERE director_nueva8  IS NOT NULL UNION
SELECT distinct director_nueva9 AS director FROM Tmp_ImpListaBD WHERE director_nueva9  IS NOT NULL UNION
SELECT distinct director_nueva10 AS director FROM Tmp_ImpListaBD WHERE director_nueva10  IS NOT NULL UNION
SELECT distinct director_nueva11 AS director FROM Tmp_ImpListaBD WHERE director_nueva11  IS NOT NULL UNION
SELECT distinct director_nueva12 AS director FROM Tmp_ImpListaBD WHERE director_nueva12  IS NOT NULL UNION
SELECT distinct director_nueva13 AS director FROM Tmp_ImpListaBD WHERE director_nueva13  IS NOT NULL 


insert into AUTOR
SELECT distinct cast_nueva1 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva1  IS NOT NULL UNION
SELECT distinct cast_nueva2 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva2  IS NOT NULL UNION
SELECT distinct cast_nueva3 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva3  IS NOT NULL UNION
SELECT distinct cast_nueva4 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva4  IS NOT NULL UNION
SELECT distinct cast_nueva5 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva5  IS NOT NULL UNION
SELECT distinct cast_nueva6 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva6  IS NOT NULL UNION
SELECT distinct cast_nueva7 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva7  IS NOT NULL UNION
SELECT distinct cast_nueva8 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva8  IS NOT NULL UNION
SELECT distinct cast_nueva9 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva9  IS NOT NULL UNION
SELECT distinct cast_nueva10 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva10  IS NOT NULL UNION
SELECT distinct cast_nueva11 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva11  IS NOT NULL UNION
SELECT distinct cast_nueva12 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva12  IS NOT NULL UNION
SELECT distinct cast_nueva13 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva13  IS NOT NULL UNION
SELECT distinct cast_nueva14 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva14  IS NOT NULL UNION
SELECT distinct cast_nueva15 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva15  IS NOT NULL UNION
SELECT distinct cast_nueva16 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva16  IS NOT NULL UNION
SELECT distinct cast_nueva17 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva17  IS NOT NULL UNION
SELECT distinct cast_nueva18 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva18  IS NOT NULL UNION
SELECT distinct cast_nueva19 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva19  IS NOT NULL UNION
SELECT distinct cast_nueva20 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva20  IS NOT NULL UNION
SELECT distinct cast_nueva21 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva21  IS NOT NULL UNION
SELECT distinct cast_nueva22 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva22  IS NOT NULL UNION
SELECT distinct cast_nueva23 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva23  IS NOT NULL UNION
SELECT distinct cast_nueva24 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva24  IS NOT NULL UNION
SELECT distinct cast_nueva25 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva25  IS NOT NULL UNION
SELECT distinct cast_nueva26 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva26  IS NOT NULL UNION
SELECT distinct cast_nueva27 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva27  IS NOT NULL UNION
SELECT distinct cast_nueva28 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva28  IS NOT NULL UNION
SELECT distinct cast_nueva29 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva29  IS NOT NULL UNION
SELECT distinct cast_nueva30 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva30  IS NOT NULL UNION
SELECT distinct cast_nueva31 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva31  IS NOT NULL UNION
SELECT distinct cast_nueva32 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva32  IS NOT NULL UNION
SELECT distinct cast_nueva33 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva33  IS NOT NULL UNION
SELECT distinct cast_nueva34 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva34  IS NOT NULL UNION
SELECT distinct cast_nueva35 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva35  IS NOT NULL UNION
SELECT distinct cast_nueva36 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva36  IS NOT NULL UNION
SELECT distinct cast_nueva37 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva37  IS NOT NULL UNION
SELECT distinct cast_nueva38 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva38  IS NOT NULL UNION
SELECT distinct cast_nueva39 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva39  IS NOT NULL UNION
SELECT distinct cast_nueva40 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva40  IS NOT NULL UNION
SELECT distinct cast_nueva41 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva41  IS NOT NULL UNION
SELECT distinct cast_nueva42 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva42  IS NOT NULL UNION
SELECT distinct cast_nueva43 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva43  IS NOT NULL UNION
SELECT distinct cast_nueva44 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva44  IS NOT NULL UNION
SELECT distinct cast_nueva45 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva45  IS NOT NULL UNION
SELECT distinct cast_nueva46 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva46  IS NOT NULL UNION
SELECT distinct cast_nueva47 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva47  IS NOT NULL UNION
SELECT distinct cast_nueva48 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva48  IS NOT NULL UNION
SELECT distinct cast_nueva49 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva49  IS NOT NULL UNION
SELECT distinct cast_nueva50 AS cast FROM Tmp_ImpListaBD WHERE cast_nueva50  IS NOT NULL 

insert into PELICULAS
SELECT B.IdType
	 , A.title
	 , c.IdDuration
	 , D.IdRating
	 , A.release_year
	 , A.Description
FROM Tmp_ImpListaBD A
INNER JOIN TIPO B ON A.type=B.type
INNER JOIN DURACION C ON A.duration=C.duration
INNER JOIN CLASIFICACION D ON A.Rating=D.Rating  

INSERT INTO PELICULAS
SELECT A.IdMovie
	 , A.show_id
	 , B.IdType
	 , A.title
	 , c.IdDuration
	 , D.IdRating
	 , A.release_year
	 , A.Description
FROM Tmp_ImpListaBD A
INNER JOIN TIPO B ON A.type=B.type
INNER JOIN DURACION C ON A.duration=C.duration
INNER JOIN CLASIFICACION D ON A.Rating=D.Rating  

INSERT INTO PELICULADETALLE
SELECT A.iPeriodo,
ROW_NUMBER() OVER(PARTITION BY A.iPeriodo ORDER BY A.iPeriodo, A.IdMovie) IdMovieDetail,
A.IdMovie, D.IdCountry, C.IdListed_in, E.IdDirector, B.IdAuthors, A.date_added
FROM #TBL_DETPELI A
INNER JOIN AUTOR B ON A.Autor=B.Authors
INNER JOIN CATEGORIA C ON A.Categoria=C.Listed_in
INNER JOIN PAIS D ON A.Pais=D.Country
INNER JOIN DIRECTOR E ON A.Director=E.Director





