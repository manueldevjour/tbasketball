<?php

    $connectdb = new mysqli("localhost","root","") ;

	// Comprobamos si se ha producido un error en la conexión
	if ($connectdb->connect_errno) {
        echo "Lo sentimos, no se ha podido establecer la conexión con la base de datos.<br> 
        Por favor, póngase en contacto con el administrador de la página";
		die("**Error $connectdb->connect_errno: $connectdb->connect_error.<br/>") ;
	} else {
        // Seleccionamos la base de datos.
        $connectdb->select_db("tbasketball") ;
        $connectdb->set_charset("utf8");
    
    }

?>