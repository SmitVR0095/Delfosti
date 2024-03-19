ALTER FUNCTION ReemplazarCaracterEspecial
(
    @Texto NVARCHAR(MAX)
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @Indice INT;
    DECLARE @Caracter NVARCHAR(1);

    SET @Indice = 1;

    WHILE @Indice <= LEN(@Texto)
    BEGIN
        SET @Caracter = SUBSTRING(@Texto, @Indice, 1);
        IF @Caracter LIKE '[�����]'
            SET @Texto = STUFF(@Texto, @Indice, 1, 'a');
        ELSE IF @Caracter LIKE '[����]'
            SET @Texto = STUFF(@Texto, @Indice, 1, 'e');
        ELSE IF @Caracter LIKE '[����]'
            SET @Texto = STUFF(@Texto, @Indice, 1, 'i');
        ELSE IF @Caracter LIKE '[�����]'
            SET @Texto = STUFF(@Texto, @Indice, 1, 'o');
        ELSE IF @Caracter LIKE '[����]'
            SET @Texto = STUFF(@Texto, @Indice, 1, 'u');
		ELSE IF @Caracter LIKE '[�]'
            SET @Texto = STUFF(@Texto, @Indice, 1, 'a');
		ELSE IF @Caracter LIKE '[@]'
            SET @Texto = STUFF(@Texto, @Indice, 1, ' ');
		ELSE IF @Caracter = CHAR(9)  --> Tabulador
            SET @Texto = STUFF(@Texto, @Indice, 1, '');
        ELSE IF @Caracter = CHAR(10) --> Salto de l�nea
            SET @Texto = STUFF(@Texto, @Indice, 1, '');
        ELSE IF @Caracter = CHAR(13) --> Retorno de carro
        -- Agrega m�s reemplazos seg�n tus necesidades

        SET @Indice = @Indice + 1;
    END

    RETURN @Texto;
END