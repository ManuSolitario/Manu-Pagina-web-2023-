<?php
	$nombre= $_GET["nombre"];
	$apellido = $_GET["apellido"];
    $edad= $_GET ["edad"];
    $requerimiento= $_GET ["requerimiento"];
    $servername = "127.0.0.1";
    $database = "Proyecto";
    $username = "alumno";
    $password = "alumnoipm";
    
    $conexion = mysqli_connect($servername, $username, $password, $database); // se crea la conexion

    echo "<h1>Registrado</h1>";
    if (!$conexion) {
        die("Conexion fallida: " . mysqli_connect_error());
    }
    else{
        //insertamos el resultado del formulario
        $resultado=mysqli_query($conexion,"insert into Suscripciones values(null, '$nombre', '$apellido', '$edad', '$requerimiento');");
        //seleccionamos todas las filas que haya en usuarios
    }
    mysqli_close($conexion);
?>
