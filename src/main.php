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
		<title>Página de inicio</title>
	</head>
	<body>
		<!-- Inicio del navbar -->
		<div class="navbar">
			<ul id="dropdown1" class="dropdown-content">
				<li><a href="perfil.php">Perfil<i class="material-icons">account_circle</i></a></li>
				<li><a href="main.php?cerrarsesion">Salir<i class="material-icons">settings_power</i></a></li>
			</ul>
			<ul id="dropdown2" class="dropdown-content">
				<li><a href="perfil.php">Perfil<i class="material-icons">account_circle</i></a></li>
				<li><a href="main.php?cerrarsesion">Salir<i class="material-icons">settings_power</i></a></li>
			</ul>
			<nav>
				<div class="nav-wrapper">
					<img class="circle" src="../img/nbaicon.png">
					<a href="#" class="brand-logo"d>TBasketball</a>
					<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
					<ul class="right hide-on-med-and-down">
						<li><a href="https://stats.nba.com/">Estadísticas oficiales</a></li>
						<li><a href="badges.html">Components</a></li>
						<li><a class="dropdown-button" href="#!" data-activates="dropdown1">Opciones<i class="material-icons right">settings</i></a></li>
					</ul>
					<ul class="side-nav" id="mobile-demo">
						<li>
							<div class="user-view">
     							<div class="background">
        							<img src="../img/basketbackgroundsidenav.jpg">
     						 	</div>
      							<a href="#!user"><img class="circle" src="images/yuna.jpg"></a>
      							<a href="#!name"><span class="white-text name">Nombre de usuario: <strong><?= $_SESSION["usuario"] ?></strong></span></a>
    						</div>
						</li>		
						<li><a href="https://stats.nba.com/">Estadísticas oficiales</a></li>
						<li><a href="badges.html">Components</a></li>
						<li><a class="dropdown-button" href="#!" data-activates="dropdown2">Opciones<i class="material-icons right">settings</i></a></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- Fin del navbar -->
		<h3 class="user">Bienvenido <strong><?= $_SESSION["usuario"] ?></strong></h3>
		<h6 class="user">Aquí tienes una lista con los equipos disponibles</h6>
		<div class="row">
			<form class="col s12" action="equiposeleccionado.php" method="POST">
				<div class="input-field col s12 m6">
					<select>
						<option value="" disabled selected>Choose your option</option>
						<?php
							$consulta = $connectdb->query("SELECT nombre_franquicia FROM equipos");
							while($resultado = $consulta->fetch_object()) {
								
								echo '<option value="' .$resultado->nombre_franquicia.'">' .$resultado->nombre_franquicia.'</option>';
								
							} mysqli_free_result($consulta); 
						?>
					</select>
				</div>
				<input type="submit">
			</form>
		</div>
	
</body>
</html>