<?php
    require_once("databaseconnection.php");

    $usuario = isset($_POST["usuario"])? $_POST["usuario"]: null;

    $resultado = $connectdb->query("DELETE FROM usuarios WHERE usuario='$usuario'");
    
?>