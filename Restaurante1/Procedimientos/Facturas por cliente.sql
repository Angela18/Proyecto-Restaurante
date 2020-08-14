use RestauranteXYZ
/* PROCEDIMIENTO DE FACTURA POR CLIENTE */
create procedure Factura_clientes

AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		A.id_factura,
		B.nombres,
		A.fecha,
		A.total_pagar
	FROM RestauranteXYZ.dbo.facturas A
	INNER JOIN clientes B
	ON(A.id_cliente = B.id_cliente)
END
GO
/* PRUEBA */
execute dbo.factura_clientes;
select *from facturas;
select *from clientes;