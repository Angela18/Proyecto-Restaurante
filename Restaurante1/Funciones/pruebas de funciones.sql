use RestauranteXYZ

/* PRUEBA FUNCION CANTIDAD EMPLEADOS */
select *from empleados;
print dbo.CantidadEmpleadosSucursal(2);
print dbo.CantidadEmpleadosSucursal(1);

/* PRUEBA FUNCION HORAS DIARIAS */
select *from reg_jornada;                                       
print dbo.horas_diarias ('2020-01-03 12:00:50.000','2020-01-03 07:03:32.000');   

/* PRUEBA FUNCION HORAS TRABAJADAS MENSUAL */ 
select *from reg_jornada;
print dbo.horas_trabajadas(1);   

/* PRUEBA FUNCION VENTAS SUCURSAL */
print dbo.Ventas_sucursal(1);

select *from facturas;