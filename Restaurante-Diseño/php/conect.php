<?php
    $serverName = "localhost";
    $connectionInfo = array("Database"=>"Restaurante1", "UID"=>"ANGELA");
    $con = sqlsrv_connect($serverName,$connectionInfo);

    if($con){
        echo "Conexion exitosa";
    }else{
        echo "Fallo en la conexion";
    }


?>