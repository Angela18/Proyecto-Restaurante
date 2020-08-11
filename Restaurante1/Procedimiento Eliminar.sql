use Restaurante1

/* PROCEDIMIENTO ELIMINAR SUCURSAL */
create procedure Del_Sucursal(
@id_sucursal int,
@nombre varchar(50),
@ubicacion varchar(50),
@telefono int
)
as
Begin
	delete from sucursal
	where id_sucursal = @id_sucursal
End 

/* PROCEDIMIENTO ELIMINAR MESAS */
create procedure Del_Mesas(
@id_mesas int,
@id_sucursal int,
@capacidad int
)
as
Begin
	delete from mesas
	where id_mesas = @id_mesas
End

/* PROCEDIMIENTO ELIMINAR CARGO */
create procedure Del_Cargos(
@id_cargo int,
@cargo varchar(50)
)
as
Begin
	delete from cargos
	where id_cargo = @id_cargo
End

/* PROCEDIMIENTO ELIMINAR EMPLEO */
create procedure Del_Empleo(
@id_tipo_empleo int,
@tipo_empleo varchar(50)
)
as
Begin
	delete from tipo_empleo
	where id_tipo_empleo = @id_tipo_empleo
End

/* PROCEDIMIENTO ELIMINAR EMPLEADOS */
create procedure Del_Empleados(
@id_empleados int,
@nombres varchar(50),
@apellidos varchar(50),
@id_sucursal int,
@id_tipo_empleo int,
@id_cargo int,
@salario decimal(18,3),
@telefono int
)
as
Begin
	delete from empleados 
	where id_empleados = @id_empleados
End

/* PROCEDIMIENTO ELIMINAR CLIENTES */
create procedure Del_Clientes(
@id_cliente int,
@nombres varchar(50),
@apellidos varchar(50),
@telefono int
)
as
Begin
	delete from clientes
	where id_cliente = @id_cliente
End

/* PROCEDIMIENTO ELIMINAR CATEGORIA */
create procedure Del_Categorias(
@id_categoria int,
@categoria varchar(50)
)
as
Begin
	delete from categorias
	where id_categoria = @id_categoria
End

/* PROCEDIMIENTO ELIMINAR PRODUCTOS */
create procedure Del_Productos(
@id_producto int,
@nombre varchar(50),
@precio real,
@descripcion varchar(90),
@id_categoria int
)
as
Begin
	delete from productos
	where id_producto = @id_producto
End

/* PROCEDIMIENTO ELIMINAR RESERVACIONES */
create procedure Del_Reservaciones(
@id_reserva int,
@id_cliente int,
@fecha date,
@hora time
)
as
Begin
	delete from reservaciones
	where id_reserva = @id_reserva
End

/* PROCEDIMIENTO ELIMINAR RESERVADAS */
create procedure Del_Mesas_Reservadas(
@id_mesa int,
@id_reserva int
)
as
Begin
	delete from mesas_reservadas
	where id_mesa = @id_mesa
End

/* PROCEDIMIENTO ELIMINAR ORDENES */
create procedure Del_Ordenes(
@id_orden int,
@id_mesa int,
@id_reserva int,
@id_producto int
)
as
Begin 
	delete from ordenes
	where id_orden = @id_orden
End

/* PROCEDIMIENTO ELIMINAR FORMA DE PAGO */
create procedure Del_Forma_Pago(
@id_forma_pago int,
@forma_pago varchar(50)
)
as
Begin 
	delete from forma_pago
	where id_forma_pago = @id_forma_pago
End

/* PROCEDIMIENTO ELIMINAR FACTURAS */
create procedure Del_Facturas(
@id_factura int,
@fecha date,
@total_pagar real,
@efectivo real,
@cambio real,
@id_cliente int,
@id_forma_pago int
)
as
Begin
	delete from facturas
	where id_factura = @id_factura
End

/* PROCEDIMIENTO ELIMINAR ORDENES FACTURADAS */
create procedure Del_Ordenes_Facturadas(
@id_orden int,
@id_factura int
)
as
Begin
	delete from orden_facturada
	where id_factura = @id_factura
End

/* PROCEDIMIENTO ELIMINAR REGISTRO JORNADA */
create procedure Del_Registro_Jornada(
@hora_entrada datetime,
@hora_salida datetime,
@id_empleado int,
@horas_trabajadas real
)
as
Begin
	delete from reg_jornada 
	where id_empleado = @id_empleado
End

/* PROCEDIMIENTO ELIMINAR BANCO */
create procedure Del_Banco(
@id_banco int,
@nombre_banco varchar(50)
)
as
Begin
	delete from banco
	where id_banco = @id_banco
End

/* PROCEDIMIENTO ELIMINAR TARJETA */
create procedure Del_Tarjeta(
@id_tarjeta int,
@moneda varchar(50),
@numero_transaccion int,
@id_factura int,
@id_banco int
)
as
Begin
	delete from tarjeta
	where id_tarjeta = @id_tarjeta
End