<?php
    require_once("databaseconnection.php");

    $id_jugador = isset($_POST["id_jugador"])? $_POST["id_jugador"]: null;

    $resultado = $connectdb->query("DELETE FROM jugadores WHERE id_jugador='$id_jugador'");
    
?>