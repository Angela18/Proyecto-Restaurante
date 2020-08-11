create database Restaurante1

use Restaurante1
/*1.- Tabla Sucursal */
create table sucursal(
	id_sucursal int not null primary key,
	nombre varchar(50) not null,
	ubicacion varchar(50)not null,
	telefono int not null,
);
/*2.- Tabla Mesas */
create table mesas(
	id_mesas int not null primary key,
	id_sucursal int not null,
	capacidad int not null
);

/*3.- Tabla Empleados */
create table empleados(
	id_empleados int not null primary key,
	nombres varchar(50) not null,
	apellidos varchar(50) not null,
	id_sucursal int not null,
	id_tipo_empleo int not null,
	id_cargo int not null,
	salario decimal(18,3) not null,
	telefono int not null
);
/*4.- Tabla Cargos */
create table cargos(
	id_cargo int not null primary key,
	cargo varchar(50) not null
);
/*5.- Tabla Tipo Empleo */
create table tipo_empleo(
	id_tipo_empleo int not null primary key,
	tipo_empleo varchar(50)
);
/*6.- Tabla Registro Jornada */
create table reg_jornada(
	hora_entrada datetime not null,
	hora_salida datetime not null,
	id_empleado int not null,
	horas_trabajadas real null
);

/*7.- Tabla Clientes */
create table clientes(
	id_cliente int not null primary key,
	nombres varchar(50) not null,
	apellidos varchar(50) not null,
	telefono int not null
);

/*8.- Tabla Productos */
create table productos(
	id_producto int not null primary key,
	nombre varchar(50) not null,
	precio real not null,
	descripcion varchar(90) not null,
	id_categoria int not null
);
/*9.- Tabla Categoria */
create table categorias(
	id_categoria int not null primary key,
	categoria varchar(50) not null
);

/*10.- Tabla Reservaciones */
create table reservaciones(
	id_reserva int not null primary key,
	id_cliente int not null,
	fecha date not null,
	hora time not null
);
/*11.- Tabla Mesas Reservadas */
create table mesas_reservadas(
	id_mesa int not null,
	id_reserva int not null
);

/*12.- Tabla Ordenes */
create table ordenes(
	id_orden int not null primary key,
	id_mesa int not null,
	id_reserva int not null,
	id_producto int not null
);
/*13.- Tabla Orden Facturada */
create table orden_facturada(
	id_factura int not null,
	id_orden int not null,
);

/*14.- Tabla Factura */
create table facturas(
	id_factura int not null primary key,
	fecha date not null,
	total_pagar real not null,
	efectivo real not null,
	cambio real not null,
	id_cliente int not null,
	id_forma_pago int not null
);
/*15.- Tabla Forma Pago */
create table forma_pago(
	id_forma_pago int not null primary key,
	forma_pago varchar(50) not null
);
/*16.- Tabla Banco */
create table banco(
	id_banco int not null primary key,
	nombre_banco varchar(50) not null
);
/*17.- Tabla Tarjeta */
create table tarjeta(
	id_tarjeta int not null primary key,
	moneda varchar(50) not null,
	numero_transaccion int not null,
	id_factura int not null,
	id_banco int not null
);
/* FOREIGN KEY EMPLEADOS */
alter table empleados add foreign key (id_cargo) references cargos(id_cargo);
alter table empleados add foreign key (id_tipo_empleo) references tipo_empleo(id_tipo_empleo);
alter table empleados add foreign key (id_sucursal) references sucursal(id_sucursal);

/*FOREIGN KEY MESAS */
alter table mesas add foreign key (id_sucursal) references sucursal(id_sucursal);

/* FOREIGN KEY PRODUCTOS */
alter table productos add foreign key (id_categoria) references categorias(id_categoria);

/* FOREIGN KEY RESERVACIONES */
alter table reservaciones add foreign key (id_cliente) references clientes(id_cliente);

/* FOREIGN KEY MESAS RESERVADAS */
alter table mesas_reservadas add foreign key (id_mesa) references mesas(id_mesas);
alter table mesas_reservadas add foreign key (id_reserva) references reservaciones(id_reserva);

/* FOREIGN KEY ORDENES */
alter table ordenes add foreign key (id_mesa) references mesas(id_mesas);
alter table ordenes add foreign key (id_Reserva) references reservaciones(id_reserva);
alter table ordenes add foreign key (id_producto) references productos(id_producto);

/* FOREIGN KEY ORDEN FACTURADA */
alter table orden_facturada add foreign key (id_factura) references facturas(id_factura);
alter table orden_facturada add foreign key (id_orden) references ordenes(id_orden);

/*FOREIGN KEY FACTURA */
alter table facturas add foreign key (id_cliente) references clientes(id_cliente);
alter table facturas add foreign key (id_forma_pago) references forma_pago(id_forma_pago);

/* FOREIGN KEY TARJETA */
alter table tarjeta add foreign key (id_factura) references facturas(id_factura);
alter table tarjeta add foreign key (id_banco) references banco(id_banco);

/* FOREIGN KEY REGISTRO JORNADA */
alter table reg_jornada add foreign key (id_empleado) references empleados(id_empleados);

