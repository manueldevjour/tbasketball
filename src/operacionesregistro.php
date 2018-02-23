<?php

    require_once("databaseconnection.php");
    session_start();
    
    if(isset($_SESSION["id"])) {
        header("Location:index.php");
    }
    
    if(isset($_POST["usuario"])) {
            
        $usuario = $connectdb->real_escape_string($_POST["usuario"]);
        $email = $connectdb->real_escape_string($_POST["email"]);
        $contrasena = $connectdb->real_escape_string($_POST["contrasena"]);
        $nombre_completo = $connectdb->real_escape_string($_POST["nombre_completo"]);
        $fecha_nacimiento = $connectdb->real_escape_string($_POST["fecha_nacimiento"]);
        $pais_origen = $connectdb->real_escape_string($_POST["pais_origen"]);
    
           
        $comprobacion = $connectdb->query("SELECT * FROM usuarios WHERE usuario = '$usuario';");    
        
        if(!$comprobacion->num_rows) {
            $insertar = $connectdb->query("INSERT INTO usuarios VALUES ('$usuario', '$contrasena', '$email', 
            false, '$nombre_completo', '$fecha_nacimiento', '$pais_origen', NULL, NULL)");  
            header("Location:login.php");
            exit();                
        } else {
            header("Location:registro.php?mensajeError");
        }
    }
?>