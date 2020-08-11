use Restaurante1

/* PROCEDIMIENTO SELECT SUCURSAL */
create procedure Sel_Sucursal
as
Begin
	select *
	from sucursal
End 

/* PROCEDIMIENTO SELECT MESAS */
create procedure Sel_Mesas
as
Begin
	select *
	from mesas
End

/* PROCEDIMIENTO SELECT CARGO */
create procedure Sel_Cargos
as
Begin
	select * 
	from cargos
End

/* PROCEDIMIENTO SELECT EMPLEO */
create procedure Sel_Empleo
as
Begin
	select * 
	from tipo_empleo
End

/* PROCEDIMIENTO SELECT EMPLEADOS */
create procedure Sel_Empleados
as
Begin
	select * 
	from empleados 
End

/* PROCEDIMIENTO SELECT CLIENTES */
create procedure Sel_Clientes
as
Begin
	select * 
	from clientes
End

/* PROCEDIMIENTO SELECT CATEGORIA */
create procedure Sel_Categorias
as
Begin
	select * 
	from categorias
End

/* PROCEDIMIENTO SELECT PRODUCTOS */
create procedure Sel_Productos
as
Begin
	select * 
	from productos
End

/* PROCEDIMIENTO SELECT RESERVACIONES */
create procedure Sel_Reservaciones
as
Begin
	select * 
	from reservaciones
End

/* PROCEDIMIENTO SELECT RESERVADAS */
create procedure Sel_Mesas_Reservadas
as
Begin
	select * 
	from mesas_reservadas
End

/* PROCEDIMIENTO SELECT ORDENES */
create procedure Sel_Ordenes
as
Begin 
	select * 
	from ordenes
End

/* PROCEDIMIENTO SELECT FORMA DE PAGO */
create procedure Sel_Forma_Pago
as
Begin 
	select * 
	from forma_pago
End

/* PROCEDIMIENTO SELECT FACTURAS */
create procedure Sel_Facturas
as
Begin
	select * 
	from facturas
End

/* PROCEDIMIENTO SELECT ORDENES FACTURADAS */
create procedure Sel_Ordenes_Facturadas
as
Begin
	select * 
	from orden_facturada
End

/* PROCEDIMIENTO SELECT REGISTRO JORNADA */
create procedure Sel_Registro_Jornada
as
Begin
	select * 
	from reg_jornada 
End

/* PROCEDIMIENTO SELECT BANCO */
create procedure Sel_Banco
as
Begin
	select * 
	from banco
End

/* PROCEDIMIENTO SELECT TARJETA */
create procedure Sel_Tarjeta
as
Begin
	select * 
	from tarjeta
End