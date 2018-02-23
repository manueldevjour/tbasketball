<?php
    require_once("databaseconnection.php");

    $id_franquicia = isset($_POST["id_franquicia"])? $_POST["id_franquicia"]: null;

    $resultado = $connectdb->query("DELETE FROM equipos WHERE id_franquicia='$id_franquicia'");
    
?>