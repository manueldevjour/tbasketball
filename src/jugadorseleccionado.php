<?php

    require_once("databaseconnection.php");
    include("funcioncerrarsesion.php");

    session_start();

    if(isset($_GET["id_jugador"])) {
        $id_jugador = $_GET["id_jugador"];

        $consultaJugadoresDatos = "SELECT * FROM jugadores WHERE id_jugador = '$id_jugador';";

        $resultadoJugadoresDatos = $connectdb->query($consultaJugadoresDatos);

    }

    $usuario = $_SESSION["usuario"];

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
		<link rel="stylesheet" href="../css/jugadorseleccionado.css">
		<link rel="icon" type="image/png" href="../img/favicon.png">
		<!--Let browser know website is optimized for mobile-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!--Import jQuery before materialize.js-->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<!-- Compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
		<script src="../js/equiposeleccionado.js"></script>
		<title>TBasketball</title>
	</head>
	<body>
		<?php
			include("navbar.php");
		?>
		<?php $fila = $resultadoJugadoresDatos->fetch_object(); ?>
		<div class="row" id="info-jugador">
			<div class="col s12">
				<div class="col s3">
					<br><img class="responsive-img imagen-jugador" src="<?= $fila->imagen ?>" alt="<?= $fila->nombre_completo ?>">
				</div>
				<div class="col s4" class="biografia">
					<p><strong>Nombre en la camiseta:</strong> <?= $fila->nombre_principal ?></p>
					<p><strong>Fecha de nacimiento:</strong> <?= $fila->fecha_nacimiento ?></p>
					<p><strong>Altura:</strong> <?= $fila->altura ?>cm</p>
					<p><strong>Peso:</strong> <?= $fila->peso ?>kg</p>
					<p><strong>Posición:</strong> <?= $fila->posicion ?></p>
					<p><strong>Ciudad de nacimiento:</strong> <?= $fila->ciudad ?></p>
					<p><strong>Universidad:</strong> <?= $fila->universidad ?></p>
					<p><strong>Draft:</strong> <?= $fila->draft ?></p>
				</div>
				<div class="col s5">
					<input type="text" value="<?= $fila->latitud ?>" id="latitud" hidden></input>
					<input type="text" value="<?= $fila->longitud ?>" id="longitud" hidden></input>
          <div id="map"></div>
          <p id="info-mapa">En este mapa, el punto señala la ciudad natal del jugador.</p>
				</div>
			</div>
		</div>
		<script>
		//Creación del mapa, con las coordenadas que se le pasan de la base de datos.
      function initMap() {
		var latitud = parseFloat(document.getElementById("latitud").value);
		var longitud = parseFloat(document.getElementById("longitud").value);
		console.log(latitud);
		console.log(longitud);
        var mapita = {lat: latitud, lng: longitud};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 7,
		  center: mapita,
		  styles: [
            {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
            {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
            {elementType: 'labels.text.fill', stylers: [{color: '#746855'}]},
            {
              featureType: 'administrative.locality',
              elementType: 'labels.text.fill',
              stylers: [{color: '#d59563'}]
            },
            {
              featureType: 'poi',
              elementType: 'labels.text.fill',
              stylers: [{color: '#d59563'}]
            },
            {
              featureType: 'poi.park',
              elementType: 'geometry',
              stylers: [{color: '#263c3f'}]
            },
            {
              featureType: 'poi.park',
              elementType: 'labels.text.fill',
              stylers: [{color: '#6b9a76'}]
            },
            {
              featureType: 'road',
              elementType: 'geometry',
              stylers: [{color: '#38414e'}]
            },
            {
              featureType: 'road',
              elementType: 'geometry.stroke',
              stylers: [{color: '#212a37'}]
            },
            {
              featureType: 'road',
              elementType: 'labels.text.fill',
              stylers: [{color: '#9ca5b3'}]
            },
            {
              featureType: 'road.highway',
              elementType: 'geometry',
              stylers: [{color: '#746855'}]
            },
            {
              featureType: 'road.highway',
              elementType: 'geometry.stroke',
              stylers: [{color: '#1f2835'}]
            },
            {
              featureType: 'road.highway',
              elementType: 'labels.text.fill',
              stylers: [{color: '#f3d19c'}]
            },
            {
              featureType: 'transit',
              elementType: 'geometry',
              stylers: [{color: '#2f3948'}]
            },
            {
              featureType: 'transit.station',
              elementType: 'labels.text.fill',
              stylers: [{color: '#d59563'}]
            },
            {
              featureType: 'water',
              elementType: 'geometry',
              stylers: [{color: '#17263c'}]
            },
            {
              featureType: 'water',
              elementType: 'labels.text.fill',
              stylers: [{color: '#515c6d'}]
            },
            {
              featureType: 'water',
              elementType: 'labels.text.stroke',
              stylers: [{color: '#17263c'}]
            }
          ]

        });
        var marker = new google.maps.Marker({
          position: mapita,
          map: map
        });
	  }
    </script>
    <script async defer
    	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCN0MITVQVkxOb6ejjvK_CCxFmE-tRTj00&callback=initMap">
    </script>
    </body>
</html>