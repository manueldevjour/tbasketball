<?php
    require_once("databaseconnection.php");
    include("funcioncerrarsesion.php");

	session_start() ;
	
	// Comprobamos si existe una sesión previa
	if (!isset($_SESSION["id"])) { 
		header("Location:login.php") ;
	}

    if (isset($_GET["cerrarsesion"])) {
		destruir_session() ; 
	}

	if (isset($_GET["eliminarcuenta"])) {
		eliminar_cuenta() ; 
	}

	$usuario = $_SESSION["usuario"];

	//Realizamos la consulta para sacar los usuarios que tenemos
	$consulta = "SELECT * FROM usuarios";
	
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
		<link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:700" rel="stylesheet">
		<link rel="stylesheet" href="../css/perfil.css">
		<link rel="icon" type="image/png" href="../img/favicon.png">
		<!--Let browser know website is optimized for mobile-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!--Import jQuery before materialize.js-->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<!-- Compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="../js/perfil.js"></script>
		<title>Perfil de usuario - TBasketball</title>
	</head>
	<body>
		<?php
			include("navbar.php");
		?>
		<?php
			$comprobacionAdmin = $connectdb->query("SELECT administrador FROM usuarios WHERE usuario = '$usuario';");
			$filaAdministrador = $comprobacionAdmin->fetch_object();
			if($filaAdministrador->administrador == 1) {?>
			<h3 class="perfiladmin">A D M I N I S T R A C I Ó N</h3>
			<h5 class="perfiladmin">Aquí tienes una lista con los usuarios que están registrados en tu página.</h5>
			<p class="perfiladmin">Si lo necesitas, puedes eliminar la cuenta de cualquier usuario.</p>
				<table class="responsive-table centered bordered" id="tablausuarios">
					<tr>
						<th>Usuario</th>
						<th>Contraseña</th>
						<th>Email</th>
						<th>Nombre completo</th>
						<th>Fecha de nacimiento</th>
						<th>Acciones</th>
					</tr>
					
					<?php
						while($fila = $resultado->fetch_object()) {?>
						<tr id="<?= $fila->usuario ?>">
							<td class="usuario"><?=$fila->usuario?></td>
							<td class="contrasena"><?=$fila->contrasena?></td>
							<td class="email"><?=$fila->email?></td>
							<td class="nombre_completo"><?=$fila->nombre_completo?></td>
							<td class="fecha_nacimiento"><?=$fila->fecha_nacimiento?></td>
							<td>
								<button class="btn-floating red boton-eliminar"><i class="material-icons">gavel</i></button>
								<button class="btn-floating yellow boton-editar disabled"><i class="material-icons">mode_edit</i></button>
							</td>
							
						</tr>
						<?php } //Final del while?>
					
				</table>
		<?php } else { 
			$comprobacionUsuario = $connectdb->query("SELECT * FROM usuarios WHERE usuario = '$usuario';");
			$filaUsuario = $comprobacionUsuario->fetch_object();?>

			<h2 class="perfil"> Hola <?= $usuario ?></h2>
			<p class="perfil">Tu fecha de nacimiento es <?= $filaUsuario->fecha_nacimiento ?></p>
			<p class="perfil">Tu país de origen es <?= $filaUsuario->pais_origen ?></p>
		<?php } ?>
		<div id="dialog-confirm" title="¿Eliminar el usuario seleccionado?">
  			<p><span class="ui-icon ui-icon-alert"></span>Este usuario será eliminado. 
			  ¿Estás seguro de querer hacer esto?</p>
		</div>
    </body>
</html>
