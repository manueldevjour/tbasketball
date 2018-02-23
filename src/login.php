<?php

	require_once("databaseconnection.php");
	require_once("operacioneslogin.php");

?>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<!--Import Google Icon Font-->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<!-- Compiled and minified CSS -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
		<link rel="stylesheet" href="../css/login.css">
		<link rel="icon" type="image/png" href="../img/favicon.png">
		<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:700" rel="stylesheet">
		<!--Let browser know website is optimized for mobile-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!--Import jQuery before materialize.js-->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<!-- Compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
		<title>Login - TBasketball</title>
	</head>

	<body>		
		<div class="container">
			<div class="row">
				<div class="col s12">
					<h3>Login</h3><br>
					<form id="login" method="POST">
						<div class="input-field col s4 offset-s1">
							<i class="material-icons prefix">account_circle</i>
							<input type="text" name="usuario" id="usuario" required>
							<label for="usuario">Nombre de usuario</label>
						</div>
						<div class="input-field col s4">
							<i class="material-icons prefix">vpn_key</i>
							<input type="password" name="contrasena" id="pass" required>
							<label for="pass">Contraseña</label>
						</div><br>
						<button class="btn waves-effect waves-light" type="submit" name="action">Iniciar sesión
							<i class="material-icons right">input</i>
						</button><br><br>
					<?= isset($mensaje) ? $mensaje : "" ; ?>
					</form>
					<a class="registro" href="registro.php">¿Aún no tienes cuenta? ¡Regístrate aquí!</a>
				</div>
			</div>
		</div>	
	</body>

	</html>