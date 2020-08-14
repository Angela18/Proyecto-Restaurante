use RestauranteXYZ

/* FUNCION HORAS TRABAJADAS EN UN DIA*/
CREATE FUNCTION horas_diarias
(
	@hora_entrada datetime,
	@hora_salida datetime
)
RETURNS INT
AS
BEGIN
	DECLARE @jornada varchar
	DECLARE @entrada int
	DECLARE @salida int
	DECLARE @horasTrabajadas int

	SET @jornada = CAST((RIGHT(@hora_entrada,2))AS varchar);
	SET @entrada = DATEPART(HOUR,@hora_entrada)
	SET @salida = DATEPART(HOUR,@hora_salida)

	IF CAST((RIGHT(@hora_entrada, 2))as varchar) = 'AM'
	BEGIN
		SET @horasTrabajadas = (12 + @salida) * @entrada;
	END
	IF CAST((RIGHT(@hora_entrada, 2))AS VARCHAR) = 'PM' AND @entrada > 12
	BEGIN 
		SET @horasTrabajadas = @salida - @entrada;
	END
	IF CAST((RIGHT(@hora_entrada, 2))AS VARCHAR) = 'PM' AND @entrada = 12
	BEGIN 
		SET @horasTrabajadas = (12 + @salida) - @entrada;
	END

	RETURN @horasTrabajadas
END
GO