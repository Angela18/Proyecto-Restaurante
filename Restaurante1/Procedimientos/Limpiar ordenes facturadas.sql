use RestauranteXYZ

CREATE PROCEDURE LIMPIAR_ORDENES_FACTURADAS

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM RestauranteXYZ.dbo.orden_facturada
	WHERE id_orden IN (SELECT id_orden
	FROM RestauranteXYZ.dbo.ordenes
	WHERE id_reserva IN(SELECT id_reserva
	FROM RestauranteXYZ.dbo.reservaciones
	WHERE (GETDATE()-30)>fecha_hora));
END
GO

select *from orden_facturada;
exec LIMPIAR_ORDENES_FACTURADAS;
