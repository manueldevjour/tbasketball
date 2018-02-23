<?php

    require_once("databaseconnection.php");
    include("funcioncerrarsesion.php");

    session_start() ;

    if(isset($_GET["id_franquicia"])) {
        $id_franquicia = $_GET["id_franquicia"];

        //Realizamos la consulta para sacar la información que tenemos de esta franquicia en concreto.
        $consultaFranquicia = "SELECT * FROM equipos WHERE id_franquicia = '$id_franquicia';";

        $resultadoFranquicia = $connectdb->query($consultaFranquicia);

        $consultaJugadores = "SELECT * FROM jugadores WHERE id_franquicia = '$id_franquicia';";

        $resultadoJugadores = $connectdb->query($consultaJugadores);

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
		<link rel="stylesheet" href="../css/equiposeleccionado.css">
		<link rel="icon" type="image/png" href="../img/favicon.png">
		<!--Let browser know website is optimized for mobile-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!--Import jQuery before materialize.js-->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<!-- Compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="../js/equiposeleccionado.js"></script>
		<title>TBasketball</title>
	</head>
	<body>
		<?php
			include("navbar.php");
		?>
		<?php $fila = $resultadoFranquicia->fetch_object(); ?>
		<p class="equipo"><strong>Equipo:</strong> <?= $fila->nombre_franquicia ?></p>
		<input type="text" value="<?= $fila->latitud ?>" id="latitud" hidden></input>
		<input type="text" value="<?= $fila->longitud ?>" id="longitud" hidden></input>
    <div id="map"></div><br>
    <p id="info-mapa">En este mapa, el punto señala la ciudad natal del jugador.</p>
    
        <div class="container">
        <?php 
          include("tablaequiposeleccionado.php");
        ?>
        </div>
        
        <div id="dialog-confirm" title="¿Eliminar el jugador seleccionado?">
  			<p><span class="ui-icon ui-icon-alert"></span>Este jugador será permanentemente eliminado. 
			  ¿Estás seguro de querer hacer esto?</p>
		</div>
		<script>
		//Creación del mapa, con las coordenadas que se le pasan de la base de datos.
      function initMap() {
		var latitud = parseFloat(document.getElementById("latitud").value);
		var longitud = parseFloat(document.getElementById("longitud").value);
        var mapita = {lat: latitud, lng: longitud};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 7,
		  center: mapita,
		  styles: [
        {elementType: 'geometry', stylers: [{color: '#ebe3cd'}]},
        {elementType: 'labels.text.fill', stylers: [{color: '#523735'}]},
        {elementType: 'labels.text.stroke', stylers: [{color: '#f5f1e6'}]},
        {
          featureType: 'administrative',
          elementType: 'geometry.stroke',
          stylers: [{color: '#c9b2a6'}]
        },
        {
          featureType: 'administrative.land_parcel',
          elementType: 'geometry.stroke',
          stylers: [{color: '#dcd2be'}]
        },
        {
          featureType: 'administrative.land_parcel',
          elementType: 'labels.text.fill',
          stylers: [{color: '#ae9e90'}]
        },
        {
          featureType: 'landscape.natural',
          elementType: 'geometry',
          stylers: [{color: '#dfd2ae'}]
        },
        {
          featureType: 'poi',
          elementType: 'geometry',
          stylers: [{color: '#dfd2ae'}]
        },
        {
          featureType: 'poi',
          elementType: 'labels.text.fill',
          stylers: [{color: '#93817c'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'geometry.fill',
          stylers: [{color: '#a5b076'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'labels.text.fill',
          stylers: [{color: '#447530'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry',
          stylers: [{color: '#f5f1e6'}]
        },
        {
          featureType: 'road.arterial',
          elementType: 'geometry',
          stylers: [{color: '#fdfcf8'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry',
          stylers: [{color: '#f8c967'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry.stroke',
          stylers: [{color: '#e9bc62'}]
        },
        {
          featureType: 'road.highway.controlled_access',
          elementType: 'geometry',
          stylers: [{color: '#e98d58'}]
        },
        {
          featureType: 'road.highway.controlled_access',
          elementType: 'geometry.stroke',
          stylers: [{color: '#db8555'}]
        },
        {
          featureType: 'road.local',
          elementType: 'labels.text.fill',
          stylers: [{color: '#806b63'}]
        },
        {
          featureType: 'transit.line',
          elementType: 'geometry',
          stylers: [{color: '#dfd2ae'}]
        },
        {
          featureType: 'transit.line',
          elementType: 'labels.text.fill',
          stylers: [{color: '#8f7d77'}]
        },
        {
          featureType: 'transit.line',
          elementType: 'labels.text.stroke',
          stylers: [{color: '#ebe3cd'}]
        },
        {
          featureType: 'transit.station',
          elementType: 'geometry',
          stylers: [{color: '#dfd2ae'}]
        },
        {
          featureType: 'water',
          elementType: 'geometry.fill',
          stylers: [{color: '#b9d3c2'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.fill',
          stylers: [{color: '#92998d'}]
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



