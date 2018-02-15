<?php

    require_once("databaseconnection.php");
    
    session_start();

    if(isset($_SESSION["id"])) {
        header("Location:main.php");
    }

    if (isset($_POST['usuario'])) {
        
        $usuario = $connectdb->real_escape_string($_POST["usuario"]);
        $email = $connectdb->real_escape_string($_POST["email"]);
        $contrasena = $connectdb->real_escape_string($_POST["contrasena"]);
        $confirmarContrasena = $connectdb->real_escape_string($_POST["confirmarContrasena"]);
        $nombre_completo = $connectdb->real_escape_string($_POST["nombre_completo"]);
        $fecha_nacimiento = $connectdb->real_escape_string($_POST["fecha_nacimiento"]);
        $pais_origen = $connectdb->real_escape_string($_POST["pais_origen"]);

        if($contrasena == $confirmarContrasena) {
            $comprobacion = $connectdb->query("SELECT * FROM usuarios WHERE usuario = '$usuario';");

            if(!$comprobacion->num_rows) {
                $insertar = $connectdb->query("INSERT INTO usuarios VALUES ('$usuario', '$contrasena', '$email', false, '$nombre_completo', '$fecha_nacimiento', '$pais_origen', NULL, NULL);");

                $_SESSION["id"] = session_id();
                $_SESSION["usuario"] = $_POST["usuario"];
                header("location:main.php");
                exit();

            } else {
                $mensaje = "<p class=\"error\">Ese usuario ya existe</p><p class=\"error\">Por favor, pruebe con otro nombre de usuario.</p>" ;
            }
        } else {
            $mensaje = "<p class=\"error\">Las contraseñas no coinciden.</p><p class=\"error\">Por favor, vuelva a intentarlo</p>" ;
        }

    }   

?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <!--Import Google Icon Font-->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<!-- Compiled and minified CSS -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="../css/registro.css">
		<!--Let browser know website is optimized for mobile-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!--Import jQuery before materialize.js-->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<!-- Compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <!-- jQuery UI -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="../js/registro.js"></script>
		<title>Registro - TBasketball</title>
    </head>
    <body>
        <div class="container">
            <form class="vertical-center" action="" method="post">
            <h2>Registrar</h2>
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s6">
                            <label for="usuario">Usuario:</label>
                            <input type="text" name="usuario" id="usuario" placeholder="Nombre de usuario">
                        </div>
                        <div class="input-field col s6">
                            <label for="email">Email:</label>
                            <input type="email" name="email" id="email" placeholder="email@ejemplo.dominio">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s6">
                            <label for="password">Contraseña: </label>
                            <input type="password" name="contrasena" id="password" placeholder="Contraseña">
                        </div>
                        <div class="input-field col s6">
                            <label for="password">Confirmar contraseña: </label>
                            <input type="password" name="confirmarContrasena" id="password" placeholder="Confirmar contraseña">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s4">
                            <label for="nombre_completo">Nombre completo: </label>
                            <input type="text" name="nombre_completo" id="nombre_completo" placeholder="Nombre completo">
                        </div>
                        <div class="input-field col s4">
                            <label for="fecha_nacimiento">Fecha de nacimiento: </label>
                            <input type="text" name="fecha_nacimiento" id="fecha_nacimiento" placeholder="Fecha de nacimiento">
                        </div>
                        <div class="input-field col s4">
                            <label for="pais_origen">País de origen: </label>
                            <input type="text" name="pais_origen" id="pais_origen" placeholder="País de origen">
                        </div>
                    </div>
                </div> 
                <button class="btn waves-effect waves-light" type="submit" name="action">Registrarse
					<i class="material-icons right">account_box</i>
				</button>
            <?= isset($mensaje) ? $mensaje : "" ; ?>
            <a href="login.php">¿Ya tienes una cuenta? Inicia sesión aquí</a>
            </form>
        </div>
        
    </body>
</html>
