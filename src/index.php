<?php

	require_once("databaseconnection.php");
	include("funcioncerrarsesion.php");
	

	session_start() ;
	
	// Comprobamos si existe una sesión previa
	if (!isset($_SESSION["id"])) { 
		header("Location:login.php") ;
	}

	// Para poder salir de la sesión actual. Al no existir sesión, nos mandaría directamente al login para poder inicar sesión.
	if (isset($_GET["cerrarsesion"])) {
		destruir_session() ; 
	}

	$usuario = $_SESSION["usuario"];

	//Realizamos la consulta para sacar los equipos que tenemos
	$consulta = "SELECT * FROM equipos";

	if (!empty($_GET["search"])){
		$consulta.= " WHERE nombre_franquicia LIKE '%" . $_GET["search"] . "%' ";
	}

	$resultado = $connectdb->query($consulta);

?>
<!DOCTYPE html>
<html>
	<head>
		<!--Import Google Icon Font-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<!-- Compiled and minified CSS -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
		<link href="https://fonts.googleapis.com/css?family=Mukta+Mahee" rel="stylesheet"> 
		<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
		<link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:700" rel="stylesheet"> 
		<link rel="stylesheet" href="../css/index.css">
		<link rel="icon" type="image/png" href="../img/favicon.png">
		<!--Let browser know website is optimized for mobile-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!--Import jQuery before materialize.js-->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<!-- Compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
		<script src="../js/index.js"></script>
		<title>Página de inicio - TBasketball</title>
	</head>
	<body>
		<?php
			include("navbar.php");
		?>
		<h3 class="user">Bienvenido <b><?= $usuario ?></b></h3>
		
		<div class="container" id="contenedor">
		<?php 
			include("tablaindex.php");
		?>
		</div>

		<div id="dialog-confirm" title="¿Eliminar el equipo seleccionado?">
  			<p><span class="ui-icon ui-icon-alert"></span>Este equipo será permanentemente eliminado. 
			  ¿Estás seguro de querer hacer esto?</p>
		</div>
	</body>
</html>