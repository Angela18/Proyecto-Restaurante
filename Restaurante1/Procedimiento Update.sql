use Restaurante1

/* PROCEDIMIENTO UPDATE SUCURSAL */
create procedure Upd_Sucursal(
@id_sucursal int,
@nombre varchar(50),
@ubicacion varchar(50),
@telefono int
)
as
Begin
	update sucursal
	set nombre = @nombre,
		ubicacion = @ubicacion,
		telefono = @telefono
	where id_sucursal = @id_sucursal
End 

/* PROCEDIMIENTO UPDATE MESAS */
create procedure Upd_Mesas(
@id_mesas int,
@id_sucursal int,
@capacidad int
)
as
Begin
	update mesas
	set id_sucursal = @id_sucursal,
		capacidad = @capacidad
	where id_mesas = @id_mesas
End

/* PROCEDIMIENTO UPDATE CARGO */
create procedure Upd_Cargos(
@id_cargo int,
@cargo varchar(50)
)
as
Begin
	update cargos 
	set cargo = @cargo
	where id_cargo = @id_cargo
End

/* PROCEDIMIENTO UPDATE EMPLEO */
create procedure Upd_Empleo(
@id_tipo_empleo int,
@tipo_empleo varchar(50)
)
as
Begin
	update tipo_empleo
	set tipo_empleo = @tipo_empleo
	where id_tipo_empleo = @id_tipo_empleo
End

/* PROCEDIMIENTO UPDATE EMPLEADOS */
create procedure Upd_Empleados(
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
	update empleados
	set nombres = @nombres,
	apellidos = @apellidos,
	id_sucursal = @id_sucursal,
	id_tipo_empleo = @id_tipo_empleo,
	id_cargo = @id_cargo,
	salario = @salario,
	telefono = @telefono
	where id_empleados = @id_empleados
End

/* PROCEDIMIENTO UPDATE CLIENTES */
create procedure Upd_Clientes(
@id_cliente int,
@nombres varchar(50),
@apellidos varchar(50),
@telefono int
)
as
Begin
	update clientes
	set nombres = @nombres,
	apellidos = @apellidos,
	telefono = @telefono
	where id_cliente = @id_cliente
End

/* PROCEDIMIENTO UPDATE CATEGORIA */
create procedure Upd_Categorias(
@id_categoria int,
@categoria varchar(50)
)
as
Begin
	update categorias
	set categoria = @categoria
	where id_categoria = @id_categoria
End

/* PROCEDIMIENTO UPDATE PRODUCTOS */
create procedure Upd_Productos(
@id_producto int,
@nombre varchar(50),
@precio real,
@descripcion varchar(90),
@id_categoria int
)
as
Begin
	update productos
	set nombre = @nombre,
		precio = @precio,
		descripcion = @descripcion,
		id_categoria = @id_categoria
	where id_producto = @id_producto
End

/* PROCEDIMIENTO UPDATE RESERVACIONES */
create procedure Upd_Reservaciones(
@id_reserva int,
@id_cliente int,
@fecha date,
@hora time
)
as
Begin
	update reservaciones
	set id_cliente = @id_cliente,
		fecha = @fecha,
		hora = @hora
	where id_reserva = @id_reserva
End

/* PROCEDIMIENTO UPDATE MESAS RESERVADAS */
create procedure Upd_Mesas_Reservadas(
@id_mesa int,
@id_reserva int
)
as
Begin
	update mesas_reservadas
	set id_reserva = @id_reserva
	where id_mesa = @id_mesa
End

/* PROCEDIMIENTO UPDATE ORDENES */
create procedure Upd_Ordenes(
@id_orden int,
@id_mesa int,
@id_reserva int,
@id_producto int
)
as
Begin 
	update ordenes
	set id_mesa = @id_mesa,
		id_reserva = @id_reserva,
		id_producto = @id_producto
	where id_orden = @id_orden
End

/* PROCEDIMIENTO UPDATE FORMA DE PAGO */
create procedure Upd_Forma_Pago(
@id_forma_pago int,
@forma_pago varchar(50)
)
as
Begin 
	update forma_pago
	set forma_pago = @forma_pago
	where id_forma_pago = @id_forma_pago
End

/* PROCEDIMIENTO UPDATE FACTURAS */
create procedure Upd_Facturas(
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
	update facturas
	set fecha = @fecha,
		total_pagar = @total_pagar,
		efectivo = @efectivo,
		cambio = @cambio,
		id_cliente = @id_cliente,
		id_forma_pago = @id_forma_pago
	where id_factura = @id_factura
End

/* PROCEDIMIENTO UPDATE ORDENES FACTURADAS */
create procedure Upd_Ordenes_Facturadas(
@id_orden int,
@id_factura int
)
as
Begin
	update orden_facturada
	set id_factura = @id_factura
	where id_orden = @id_orden
End

/* PROCEDIMIENTO UPDATE REGISTRO JORNADA */
create procedure Upd_Registro_Jornada(
@hora_entrada datetime,
@hora_salida datetime,
@id_empleado int,
@horas_trabajadas real
)
as
Begin
	update reg_jornada 
	set hora_entrada = @hora_entrada,
		hora_salida = @hora_salida,
		horas_trabajadas = @horas_trabajadas
	where id_empleado = @id_empleado
End

/* PROCEDIMIENTO UPDATE BANCO */
create procedure Upd_Banco(
@id_banco int,
@nombre_banco varchar(50)
)
as
Begin
	update banco
	set nombre_banco = @nombre_banco
	where id_banco = @id_banco
End

/* PROCEDIMIENTO UPDATE TARJETA */
create procedure Upd_Tarjeta(
@id_tarjeta int,
@moneda varchar(50),
@numero_transaccion int,
@id_factura int,
@id_banco int
)
as
Begin
	update tarjeta
	set moneda = @moneda,
		numero_transaccion = @numero_transaccion,
		id_factura = @id_factura,
		id_banco = @id_banco
	where id_tarjeta = @id_tarjeta
End