<div class="navbar">
	<ul id="dropdown1" class="dropdown-content">
        <li><a href="index.php">Inicio<i class="material-icons">line_style</i></a></li>
        <li><a href="perfil.php">Perfil<i class="material-icons">account_circle</i></a></li>
		<li><a href="index.php?cerrarsesion">Salir<i class="material-icons">settings_power</i></a></li>
	</ul>
	<ul id="dropdown2" class="dropdown-content">
        <li><a href="index.php">Inicio<i class="material-icons">line_style</i></a></li>
        <li><a href="perfil.php">Perfil<i class="material-icons">account_circle</i></a></li>
		<li><a href="index.php?cerrarsesion">Salir<i class="material-icons">settings_power</i></a></li>
	</ul>
	<nav>
		<div class="nav-wrapper">
			<img class="circle" src="../img/nbaicon.png">
			<a href="index.php" class="brand-logo"d>TBasketball</a>
			<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
			<ul class="right hide-on-med-and-down">
				<li><a href="https://stats.nba.com/" target="_blank">Estadísticas oficiales</a></li>
				<li><a href="https://www.youtube.com/user/NBA" target="_blank">Youtube</a></li>
				<li><a class="dropdown-button" href="#!" data-activates="dropdown1">Opciones<i class="material-icons right">settings</i></a></li>
			</ul>
			<ul class="side-nav" id="mobile-demo">
				<li>
					<div class="user-view">
     					<div class="background">
        					<img class="backgroundperfil" src="../img/basketbackgroundsidenav.jpg">
     					</div>
      					<a href="#!user"><img class="circle" src="../img/profilepicture.png"></a>
      					<a href="#!name"><span class="white-text name">Nombre de usuario: <strong><?= $usuario ?></strong></span></a>
    				</div>
				</li>		
				<li><a href="https://stats.nba.com/" target="_blank">Estadísticas oficiales</a></li>
				<li><a href="https://www.youtube.com/user/NBA" target="_blank">Youtube</a></li>
				<li><a class="dropdown-button" href="#!" data-activates="dropdown2">Opciones<i class="material-icons right">settings</i></a></li>
			</ul>
		</div>
	</nav>
</div>