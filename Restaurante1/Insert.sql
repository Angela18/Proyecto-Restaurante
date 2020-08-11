use Restaurante1

/* INSERT TABLA SUCURSAL */
exec Proc_Sucursal 1,'Restaurante 1','Mercaderes','123456';

/* INSERT TABLA MESAS */
exec Proc_Mesas 1,1,2;
exec Proc_Mesas 2,1,2;
exec Proc_Mesas 3,1,4;
exec Proc_Mesas 4,1,4;

/* INSERT CARGO */
exec Proc_Cargos 1,'Cajero';
exec Proc_Cargos 2,'Mesero';
exec Proc_Cargos 3,'Cocinero';
exec Proc_Cargos 4,'Administrador';

/*INSERT TIPO EMPLEO */
exec Proc_Empleo 1,'Tiempo completo';
exec Proc_Empleo 2,'Medio tiempo';
exec Proc_Empleo 3,'Practicante';

/* INSERT EMPLEADOS */
exec Proc_Empleados 1,'Andres Raul','Jimenez Sanchez',1,1,1,750.50,'123456';
exec Proc_Empleados 2,'Hugo Jose','Lopez Ramirez',1,2,2,750.50,'123456';
exec Proc_Empleados 3,'Maria Raquel','Castro Lozada',1,3,3,750.50,'123456';
exec Proc_Empleados 4,'Andres Raul','Jimenez Sanchez',1,2,4,750.50,'123456';

/* INSERT CLIENTES */
exec Proc_Clientes 1,'Arturo','Peña Castro','123456';
exec Proc_Clientes 2,'Geronimo','Acosta Saenz','123456';
exec Proc_Clientes 3,'Sara','Marquez Contreras','123456';

/* INSERT CATEGORIA */
exec Proc_Categorias 1,'Plato fuerte';
exec Proc_Categorias 2,'Bebida';
exec Proc_Categorias 3,'Postre';
exec Proc_Categorias 4,'Entrada';

/* INSERT PRODUCTOS */
exec Proc_Productos 1,'Producto 1',15,'Descripcion 1',1;
exec Proc_Productos 2,'Producto 2',15,'Descripcion 2',2;
exec Proc_Productos 3,'Producto 3',15,'Descripcion 3',3;
exec Proc_Productos 4,'Producto 4',15,'Descripcion 4',4;

/* INSERT RESERVACIONES */
exec Proc_Reservaciones 1,1,'2020-08-15','15:30';
exec Proc_Reservaciones 2,2,'2020-09-04','14:00';
exec Proc_Reservaciones 3,3,'2020-11-12','13:30';

/* INSERT MESAS RESERVADAS */
exec Proc_Mesas_Reservadas 1,1;
exec Proc_Mesas_Reservadas 2,3;
exec Proc_Mesas_Reservadas 4,2;

/* INSERT ORDENES */
exec Proc_Ordenes 1,1,1,4;
exec Proc_Ordenes 2,4,2,1;
exec Proc_Ordenes 3,2,3,2;

/* INSERT FORMA PAGO */
exec Proc_Forma_Pago 1,'Efectivo';
exec Proc_Forma_Pago 2,'Tarjeta VISA';
exec Proc_Forma_Pago 3,'Tarjeta MasterCard';

/* INSERT FACTURAS */
exec Proc_Facturas 1,'2020-08-15',54,100,45,1,1;
exec Proc_Facturas 2,'2020-09-04',54,100,45,2,2;
exec Proc_Facturas 3,'2020-11-12',54,100,45,3,3;

/* INSERT ORDENES FACTURADAS */
exec Proc_Ordenes_Facturadas 1,1;
exec Proc_Ordenes_Facturadas 2,2;
exec Proc_Ordenes_Facturadas 3,3;

/* INSERT REGISTRO JORNADA */
exec Proc_Registro_Jornada '09:00','17:00',1,NULL;
exec Proc_Registro_Jornada '17:00','22:00',2,NULL;
exec Proc_Registro_Jornada '12:00','14:00',3,NULL;
exec Proc_Registro_Jornada '09:00','13:00',4,NULL;

/* INSERT BANCO */
exec Proc_Banco 1,'Banco de la Nación';
exec Proc_Banco 2,'BCP';
exec Proc_Banco 3,'Banco Interbanck';

/* INSERT TARJETA */
exec Proc_Tarjeta 1,'Nuevo Sol',1,1,1;
exec Proc_Tarjeta 2,'Nuevo Sol',2,2,3;
exec Proc_Tarjeta 3,'Nuevo Sol',1,3,2;




