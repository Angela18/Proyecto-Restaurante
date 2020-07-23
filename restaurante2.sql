create database restaurante2;

use restaurante2;

create table sucursal(
	id_sucursal int not null primary key,
	nombre varchar(40),
	ubicacion varchar(40),
	telefono int 
);

create table cargo(
	id_cargo int not null primary key,
	cargo varchar(15)
);

create table empleados(
	id_empleado int not null primary key,
    nombre varchar(50),
    apellido varchar(50),
    id_sucursal int foreign key(id_sucursal)references sucursal(id_sucursal),
    id_cargo int foreign key(id_cargo) references cargo(id_cargo),
    salario float(10),
    telefono int
);

create table cliente(
	id_cliente int not null primary key,
    nombre varchar(50),
    apellido varchar(50),
	id_sucursal int foreign key (id_sucursal) references sucursal(id_sucursal),
    telefono int
);

create table mesas(
	id_mesa int not null primary key,
    id_sucursal int  foreign key(id_sucursal) references sucursal(id_sucursal),
    capacidad int
);

create table reservaciones1(
	id_reserva int not null primary key,
    id_cliente int foreign key(id_cliente) references cliente(id_cliente),
    fecha date,
    hora time,
	id_mesa int foreign key(id_mesa) references mesas(id_mesa)
);

create table forma_pago(
	id_forma_pago int primary key,
    forma_pago varchar(20)
);

create table factura(
	id_factura int primary key,
    fecha date,
    total_pagar float(50),
    id_cliente int foreign key (id_cliente) references cliente(id_cliente),
    id_forma_pago int foreign key(id_forma_pago) references forma_pago(id_forma_pago)
    
);

create table categoria(
	id_categoria int primary key,
    categoria varchar(10)
);

create table productos(
	id_producto int primary key,
    nombre varchar(20),
    descripcion varchar(50),
    precio float(20),
    id_categoria int foreign key (id_categoria) references categoria(id_categoria)
    
);

create table ordenes(
	id_orden int primary key,
    id_mesa int foreign key (id_mesa) references mesas(id_mesa),
    id_reserva int foreign key (id_reserva) references reservaciones(id_reserva),
    id_producto int foreign key (id_producto) references productos(id_producto)
); 
-- Sucursales -- 
insert into sucursal(id_sucursal,nombre,ubicacion,telefono)values(1,'Restaurante1','Avenida',123456);
insert into sucursal(id_sucursal,nombre,ubicacion,telefono)values(2,'Restaurante2','Calle',789456);
insert into sucursal(id_sucursal,nombre,ubicacion,telefono)values(3,'Restaurante3','Avenida',456123);
insert into sucursal(id_sucursal,nombre,ubicacion,telefono)values(4,'Restaurante4','Calle',789123);

-- Cargo --
insert into cargo(id_cargo,cargo)values(1,'Administrador');
insert into cargo(id_cargo,cargo)values(2,'Cajero');
insert into cargo(id_cargo,cargo)values(3,'Mesero');

-- Empleados --
insert into empleados(id_empleado,nombre,apellido,id_sucursal,id_cargo,salario,telefono)
values(100,'Jose','Martinez',1,1,750,123456);
insert into empleados(id_empleado,nombre,apellido,id_sucursal,id_cargo,salario,telefono)
values(200,'Raul','Juarez',2,1,750,123456);
insert into empleados(id_empleado,nombre,apellido,id_sucursal,id_cargo,salario,telefono)
values(300,'Pablo','Lopez',3,1,750,123456);
insert into empleados(id_empleado,nombre,apellido,id_sucursal,id_cargo,salario,telefono)
values(400,'Maria','Sanchez',4,1,750,123456);
insert into empleados(id_empleado,nombre,apellido,id_sucursal,id_cargo,salario,telefono)
values(101,'Saul','Castro',1,2,750,123456);
insert into empleados(id_empleado,nombre,apellido,id_sucursal,id_cargo,salario,telefono)
values(201,'Perla','Perez',2,2,750,123456);
insert into empleados(id_empleado,nombre,apellido,id_sucursal,id_cargo,salario,telefono)
values(301,'Tania','Arenas',3,2,750,123456);
insert into empleados(id_empleado,nombre,apellido,id_sucursal,id_cargo,salario,telefono)
values(401,'Marta','Santos',4,2,750,123456);

-- Clientes --
insert into cliente(id_cliente,nombre,apellido,id_sucursal,telefono)
values(1,'Patricia','Guiterrez',1,147852);
insert into cliente(id_cliente,nombre,apellido,id_sucursal,telefono)
values(2,'Tadeo','Martinez',2,147852);
insert into cliente(id_cliente,nombre,apellido,id_sucursal,telefono)
values(3,'Fernando','Loaiza',3,147852);
insert into cliente(id_cliente,nombre,apellido,id_sucursal,telefono)
values(4,'Alejandro','Mendez',4,147852);

-- Reservaciones --
insert into reservaciones1(id_reserva,id_cliente,fecha,hora,id_mesa)
values(10,1,'25-02-2020','10:00',11);
insert into reservaciones1(id_reserva,id_cliente,fecha,hora,id_mesa)
values(20,2,'14-08-2020','13:00',21);
insert into reservaciones1(id_reserva,id_cliente,fecha,hora,id_mesa)
values(30,3,'02-07-2020','17:00',31);
insert into reservaciones1(id_reserva,id_cliente,fecha,hora,id_mesa)
values(40,4,'09-12-2020','18:30',41);

-- Mesas --
insert into mesas(id_mesa,id_sucursal,capacidad) values(11,1,4);
insert into mesas(id_mesa,id_sucursal,capacidad) values(12,1,2);
insert into mesas(id_mesa,id_sucursal,capacidad) values(21,2,4);
insert into mesas(id_mesa,id_sucursal,capacidad) values(22,2,2);
insert into mesas(id_mesa,id_sucursal,capacidad) values(31,3,4);
insert into mesas(id_mesa,id_sucursal,capacidad) values(32,3,2);
insert into mesas(id_mesa,id_sucursal,capacidad) values(41,4,4);
insert into mesas(id_mesa,id_sucursal,capacidad) values(42,4,2);

-- Categoria --
insert into categoria(id_categoria,categoria)values(123,'Bebidas');
insert into categoria(id_categoria,categoria)values(456,'Dulces');
insert into categoria(id_categoria,categoria)values(789,'Beb. alc');
insert into categoria(id_categoria,categoria)values(147,'Beb. cal');
insert into categoria(id_categoria,categoria)values(258,'Salados');

-- Productos --
insert into productos(id_producto,nombre,id_categoria,precio,descripcion)
values(001,'Jugo de Papaya',123,6.00,'Jugo hecho a base de papaya arequipeña');
insert into productos(id_producto,nombre,id_categoria,precio,descripcion)
values(002,'Tres Leches',456,8.00,'Torta bañada en 3 diferentes leches');
insert into productos(id_producto,nombre,id_categoria,precio,descripcion)
values(003,'Piña Colada',789,12.50,'Bebida a base de piña con un toque de alcohol');
insert into productos(id_producto,nombre,id_categoria,precio,descripcion)
values(004,'Chocolate caliente',147,7.50,'Bebida caliente de chocolate con leche');
insert into productos(id_producto,nombre,id_categoria,precio,descripcion)
values(005,'Empana de Pollo',258,5.50,'Empanada rellena de pollo con especias');
