<?php

	require_once("databaseconnection.php");
	include("funciones.php");
	

	session_start() ;
    
    
	// Comprobamos si existe una sesión previa
	if (!isset($_SESSION["id"])) { 
		header("Location:login.php") ;
	}

	// Para poder salir de la sesión actual. Al no existir sesión, nos mandaría directamente al login para poder inicar sesión.
	if (isset($_GET["cerrarsesion"])) {
		destruir_session() ; 
	}

    $equipo = $_GET["equipo"];

?>
<!DOCTYPE html>
<html>
	<head>
		<!--Import Google Icon Font-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<!-- Compiled and minified CSS -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
		<!--Let browser know website is optimized for mobile-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!--Import jQuery before materialize.js-->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<!-- Compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
		<script src="../js/main.js"></script>
		<link rel="stylesheet" href="../css/main.css">
		<title>Selección de equipo</title>
	</head>
	<body>
    <?php echo $equipo ?>
</body>
</html>