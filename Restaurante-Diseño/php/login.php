<?php
    $serverName = "ANGELA";
    $connectionInfo = array("Database"=>"RestauranteXYZ", "UID"=>"Angela", "PWD"=>"");
    $conn = sqlsrv_connect($serverName,$connectionInfo);

    $usuario = $_POST['nombre'];
    $password = $_POST['clave'];

    if($conn){
        $consulta = "SELECT * FROM empleados WHERE nombre ='".$usuario."'AND clave = '".$password."';";
        $resultado = sqlsrv_query($conn,$consulta);
    }else{
        print "Error";
    }


?>