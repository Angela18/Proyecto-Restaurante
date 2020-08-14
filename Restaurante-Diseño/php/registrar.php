<?php

$serverName = "ANGELA";
$connectionInfo = array("Database"=>"RestauranteXYZ", "UID"=>"Angela", "PWD"=>"");
$conn = sqlsrv_connect($serverName,$connectionInfo);

$nombre = $_POST['nombre'];
$apellidos = $_POST['apellidos'];
$salario = $_POST['salario'];
$telefono = $_POST['telefono'];
$cargo = $_POST['cargo'];
$tipo = $_POST['tipo'];

if($conn){
    $consulta = "INSERT INTO empleados (id_empleados, nombres, apellidos, id_sucursal, id_tipo_empleo, id_cargo, salario, telefono) 
    VALUES ('$nombre','$apellidos','$tipo','$cargo','$salario','$telefono');";
    $resultado = sqlsrv_query($conn,$consulta);
}else{
    print "Error de conexion";
}

?>