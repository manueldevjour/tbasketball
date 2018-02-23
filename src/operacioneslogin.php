<?php
    require_once("databaseconnection.php");

    session_start() ;
    
        // Comprobar si existe una sesión previa
        if (isset($_SESSION["id"])) {
            header("Location:index.php") ;
        }
    
    
        if (isset($_POST["usuario"])) {
    
            // Escapamos las cadenas correctamente para evitar inyección de código
            $usuario = $connectdb->real_escape_string($_POST["usuario"]);
            $contrasena = $connectdb->real_escape_string(($_POST["contrasena"]));
    
            // Comprobar si existe el usuario en la base de datos
            $sql  = "SELECT * FROM usuarios WHERE usuario='$usuario' AND contrasena='$contrasena';" ;
            $resultado = $connectdb->query($sql) ;
    
    
            // Si he obtenido un resultado correcto...
            if ($resultado->num_rows) {
    
                // Crear las variables de sesión necesarias
                $_SESSION["id"]  = session_id();
                $_SESSION["usuario"] = $_POST["usuario"];
    
                // Redirigimos
                header("Location:index.php") ;
    
            } else {
                $mensaje = "<p class=\"error\">El usuario y/o la contraseña son incorrectos.</p><p class=\"error\">Por favor, vuelva a intentarlo</p>" ;
            }
    
            if(!$resultado) {
                trigger_error("Invalid query: " . $connectdb->error);
            }
    
            // Cerrar la conexión de la base datos.
            $connectdb->close() ;
        }
?>