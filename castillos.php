<?php
	
    $servername = "127.0.0.1";
    $database = "paginaweb";
    $username = "alumno";
    $password = "alumnoipm";
    
    $conexion = mysqli_connect($servername, $username, $password, $database); // se crea la conexion


    if (!$conexion) {
        die("Conexion fallida: " . mysqli_connect_error());
    }
    else{
        //insertamos el resultado del formulario
        $resultado=mysqli_query($conexion,"insert into usuarios values(null, '$nombre', '$apellido');");
        //seleccionamos todas las filas que haya en usuarios
		$resultado = mysqli_query($conexion,"select * from Elementos where idElementos = 1;");
        
        echo "Datos que hay en la base:\n";
        while($fila=mysqli_fetch_assoc($resultado)){ // recorremos cada fila obtenida y mostramos el nombre y el apellido
            ?>
            <p><?php echo $fila['nombre']. " " .$fila['descripcion']?></p>
            <?php
        }
    }
    mysqli_close($conexion);
?>
