use RestauranteXYZ

/* 1. PROCEDIMIENTO INSERTAR SUCURSAL */
create procedure Proc_Sucursal(
@id_sucursal int,
@nombre varchar(50),
@ubicacion varchar(50),
@telefono int
)
as
Begin
	insert into sucursal(id_sucursal,nombre,ubicacion,telefono)
	values(@id_sucursal,@nombre,@ubicacion,@telefono)
End 

/* 2. PROCEDIMIENTO INSERTAR MESAS */
create procedure Proc_Mesas(
@id_mesas int,
@id_sucursal int,
@capacidad int
)
as
Begin
	insert into mesas(id_mesas,id_sucursal,capacidad)
	values(@id_mesas,@id_sucursal,@capacidad)
End

/* 3. PROCEDIMIENTO INSERTAR CARGO */
create procedure Proc_Cargos(
@id_cargo int,
@cargo varchar(50)
)
as
Begin
	insert into cargos(id_cargo,cargo)
	values(@id_cargo,@cargo)
End

/* 4. PROCEDIMIENTO INSERTAR EMPLEO */
create procedure Proc_Empleo(
@id_tipo_empleo int,
@tipo_empleo varchar(50)
)
as
Begin
	insert into tipo_empleo(id_tipo_empleo,tipo_empleo)
	values(@id_tipo_empleo,@tipo_empleo)
End

/* 5. PROCEDIMIENTO INSERTAR EMPLEADOS */
create procedure Proc_Empleados(
@id_empleados int,
@nombres varchar(50),
@apellidos varchar(50),
@clave varchar(20),
@id_sucursal int,
@id_tipo_empleo int,
@id_cargo int,
@salario decimal(18,3),
@telefono int
)
as
Begin
	insert into empleados(id_empleados,nombres,apellidos,clave,id_sucursal,id_tipo_empleo,id_cargo,salario,telefono)
	values(@id_empleados,@nombres,@apellidos,@clave,@id_sucursal,@id_tipo_empleo,@id_cargo,@salario,@telefono)
End

/* 6. PROCEDIMIENTO INSERTAR CLIENTES */
create procedure Proc_Clientes(
@id_cliente int,
@nombres varchar(50),
@apellidos varchar(50),
@telefono int
)
as
Begin
	insert into clientes(id_cliente,nombres,apellidos,telefono)
	values(@id_cliente,@nombres,@apellidos,@telefono)
End

/* 7. PROCEDIMIENTO INSERTAR CATEGORIA */
create procedure Proc_Categorias(
@id_categoria int,
@categoria varchar(50)
)
as
Begin
	insert into categorias(id_categoria,categoria)
	values(@id_categoria,@categoria)
End

/* 8. PROCEDIMIENTO INSERTAR PRODUCTOS */
create procedure Proc_Productos(
@id_producto int,
@nombre varchar(50),
@precio real,
@descripcion varchar(90),
@id_categoria int
)
as
Begin
	insert into productos(id_producto,nombre,precio,descripcion,id_categoria)
	values(@id_producto,@nombre,@precio,@descripcion,@id_categoria)
End

/* 9. PROCEDIMIENTO INSERTAR RESERVACIONES */
create procedure Proc_Reservaciones(
@id_reserva int,
@id_cliente int,
@fecha_hora datetime
)
as
Begin
	insert into reservaciones(id_reserva,id_cliente,fecha_hora)
	values(@id_reserva,@id_cliente,@fecha_hora)
End

/* 10. PROCEDIMIENTO MESAS RESERVADAS */
create procedure Proc_Mesas_Reservadas(
@id_mesa int,
@id_reserva int
)
as
Begin
	insert into mesas_reservadas(id_mesa,id_reserva)
	values(@id_mesa,@id_reserva)
End

/* 11. PROCEDIMIENTO INSERTAR ORDENES */
create procedure Proc_Ordenes(
@id_orden int,
@id_mesa int,
@id_reserva int,
@id_producto int
)
as
Begin 
	insert into ordenes(id_orden,id_mesa,id_reserva,id_producto)
	values(@id_orden,@id_mesa,@id_reserva,@id_producto)
End

/* 12. PROCEDIMIENTO INSERTAR FORMA DE PAGO */
create procedure Proc_Forma_Pago(
@id_forma_pago int,
@forma_pago varchar(50)
)
as
Begin 
	insert into forma_pago(id_forma_pago,forma_pago)
	values(@id_forma_pago,@forma_pago)
End

/* 13. PROCEDIMIENTO INSERTAR FACTURAS */
create procedure Proc_Facturas(
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
	insert into facturas(id_factura,fecha,total_pagar,efectivo,cambio,id_cliente,id_forma_pago)
	values(@id_factura,@fecha,@total_pagar,@efectivo,@cambio,@id_cliente,@id_forma_pago)
End

/* 14. PROCEDIMIENTO INSERTAR ORDENES FACTURADAS */
create procedure Proc_Ordenes_Facturadas(
@id_orden int,
@id_factura int
)
as
Begin
	insert into orden_facturada(id_orden,id_factura)
	values(@id_orden,@id_factura)
End

/* 15. PROCEDIMIENTO INSERTAR REGISTRO JORNADA */
create procedure Proc_Registro_Jornada(
@hora_entrada datetime,
@hora_salida datetime,
@id_empleado int,
@horas_trabajadas real
)
as
Begin
	insert into reg_jornada(hora_entrada,hora_salida,id_empleado,horas_trabajadas)
	values(@hora_entrada,@hora_salida,@id_empleado,@horas_trabajadas)
End

/* 16. PROCEDIMIENTO INSERTAR BANCO */
create procedure Proc_Banco(
@id_banco int,
@nombre_banco varchar(50)
)
as
Begin
	insert into banco(id_banco,nombre_banco)
	values(@id_banco,@nombre_banco)
End

/* 17. PROCEDIMIENTO INSERTAR TARJETA */
create procedure Proc_Tarjeta(
@id_tarjeta int,
@moneda varchar(50),
@numero_transaccion int,
@id_factura int,
@id_banco int
)
as
Begin
	insert into tarjeta(id_tarjeta,moneda,numero_transaccion,id_factura,id_banco)
	values(@id_tarjeta,@moneda,@numero_transaccion,@id_factura,@id_banco)
End