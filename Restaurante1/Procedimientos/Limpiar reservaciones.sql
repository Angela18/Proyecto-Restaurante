use RestauranteXYZ

CREATE PROCEDURE LIMPIAR_RESERVACIONES

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM RestauranteXYZ.dbo.reservaciones
	WHERE (GETDATE()-30)>fecha_hora;
END
GO

exec LIMPIAR_RESERVACIONES;
select *from reservaciones;