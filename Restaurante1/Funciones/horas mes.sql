use RestauranteXYZ

/* HORAS TRABAJADAS POR UN EMPLEADO EN UN MES*/ 
CREATE FUNCTION Horas_trabajadas
(
	@id_empleado INT
)
RETURNS INT
AS
BEGIN
	
	DECLARE @horas INT = 0;
	
	SELECT @horas = SUM(horas_trabajadas) 
	FROM RestauranteXYZ.dbo.reg_jornada 
	WHERE id_empleado = @id_empleado
	GROUP BY DATEPART(MONTH, hora_entrada);
	
	RETURN @horas

END
GO
