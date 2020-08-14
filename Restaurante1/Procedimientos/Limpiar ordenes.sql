use RestauranteXYZ

CREATE PROCEDURE LIMPIAR_ORDENES

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM RestauranteXYZ.dbo.ordenes
	WHERE id_reserva IN (SELECT id_reserva
	FROM RestauranteXYZ.dbo.reservaciones
	WHERE (GETDATE()-30)>fecha_hora-30);
END
GO

select *from ordenes;
exec LIMPIAR_ORDENES;