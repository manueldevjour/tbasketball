<?php

    require_once("databaseconnection.php");
    
    require_once("operacionesregistro.php");
    if(isset($_GET["mensajeError"])){
        $mensaje = "<p class=\"error\">Ese usuario ya existe</p><p class=\"error\">Por favor, pruebe con otro nombre de usuario.</p>" ;
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
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:700" rel="stylesheet">
        <link rel="stylesheet" href="../css/registro.css">
        <link rel="icon" type="image/png" href="../img/favicon.png">
		<!--Let browser know website is optimized for mobile-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!--Import jQuery before materialize.js-->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<!-- Compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <!-- jQuery UI -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="../js/jquery.validate.js"></script>
        <script src="../js/additional-methods.js"></script>
        <script src="../js/registro.js"></script>
		<title>Registro - TBasketball</title>
    </head>
    <body>
        <div class="container">
            <form id="form-registro" class="vertical-center" action="operacionesregistro.php" method="post">
            <h4>Regístrate</h4>
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s6">
                            <label for="usuario">Usuario:</label>
                            <input type="text" name="usuario" id="usuario">
                        </div>
                        <div class="input-field col s6">
                            <label for="email">Email:</label>
                            <input type="email" name="email" id="email">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s6">
                            <label for="password">Contraseña: </label>
                            <input type="password" name="contrasena" id="contrasena">
                        </div>
                        <div class="input-field col s6">
                            <label for="password">Confirmar contraseña: </label>
                            <input type="password" name="confirmarContrasena" id="confirmarContrasena">
                        </div>
                    </div>
                </div><br><br><br><br><br><br><br><br><br><br>
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s4">
                            <label for="nombre_completo">Nombre completo: </label>
                            <input type="text" name="nombre_completo" id="nombre_completo">
                        </div>
                        <div class="input-field col s4">
                            <label for="fecha_nacimiento">Fecha de nacimiento: </label>
                            <input type="text" name="fecha_nacimiento" id="fecha_nacimiento">
                        </div>
                        <div class="input-field col s4">
                            <!-- <label for="pais_origen">País de origen: </label> -->
                            <select name="pais_origen">
                                <option value="" disabled selected>Elija un país</option>
                                <?php
                                    $consulta = $connectdb->query("SELECT id_pais, nombrebonito FROM paises");
                                    while($resultado = $consulta->fetch_object()) {
                                        
                                        echo '<option value="' .$resultado->nombrebonito.'">' .$resultado->nombrebonito.'</option>';
                                        
                                    }  
                                ?>
                            </select>
                        </div>
                    </div>
                </div> 
                <button class="btn waves-effect waves-light" type="submit" name="action">Registrarse
					<i class="material-icons right">account_box</i>
				</button>
                <?php if(isset($mensaje)) {
                    echo $mensaje;
                } ?>
            <a class="login" href="login.php">¿Ya tienes una cuenta? Inicia sesión aquí</a>
            <p id="usuario-error"></p>
            </form>
        </div>
        
    </body>
</html>
