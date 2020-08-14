use RestauranteXYZ

/* FUNCION CANTIDAD DE EMPLEADOS POR SUCURSAL */
GO

CREATE FUNCTION CantidadEmpleadosSucursal
(
	@id_sucursal INT

)
RETURNS INT
AS
BEGIN
	
	DECLARE @cantidad_empleados INT
	
	SET @cantidad_empleados=( SELECT COUNT(A.id_empleados)
	FROM RestauranteXYZ.dbo.empleados A
	WHERE id_sucursal= @id_sucursal
	GROUP BY id_sucursal);
	
	RETURN @cantidad_empleados

END
GO