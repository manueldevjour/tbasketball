<?php

    include "conexion.php";

    $consulta = "INSERT INTO equipos (id_franquicia, nombre_franquicia, sede, propietario, presupuesto, conferencia, division, anos_nba, estadio, equipoAfiliado, imagen, latitud, altitud) 
    VALUES ('" . $_POST["id_franquicia"] ."','". $_POST["nombre_franquicia"] ."','". $_POST["sede"] ."'
    ,'". $_POST["propietario"] ."','". $_POST["presupuesto"] ."','". $_POST["conferencia"] ."','". $_POST["division"] ."','". $_POST["anos_nba"] ."'
    ,'". $_POST["estadio"] ."','". $_POST["equipoAfiliado"] ."','". $_POST["imagen"] ."','". $_POST["latitud"] ."','". $_POST["longitud"] ."')";
    
    $conexion->query($consulta);
    

?>