use RestauranteXYZ

CREATE PROCEDURE LIMPIAR_MESAS_RESERVADAS

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM RestauranteXYZ.dbo.mesas_reservadas
	WHERE id_reserva IN (SELECT id_reserva
	FROM RestauranteXYZ.dbo.reservaciones
	WHERE(GETDATE()-30)>(fecha_hora-30));
END
GO

SELECT *FROM mesas_reservadas;
select *from reservaciones;
exec LIMPIAR_MESAS_RESERVADAS;