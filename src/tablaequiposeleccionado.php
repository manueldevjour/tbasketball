<?php
			$comprobacionAdmin = $connectdb->query("SELECT administrador FROM usuarios WHERE usuario = '$usuario';");
			$filaAdministrador = $comprobacionAdmin->fetch_object();
			if($filaAdministrador->administrador == 1) {?>
        <table class="responsive-table centered bordered" id="tabla-jugadores">
		    <tr>
			    <th>Id jugador</th>
				<th>Nombre</th>
				<th>Draft</th>
				<th>Posicion</th>
				<th>Universidad</th>
				<th>Acciones</th>
			</tr>
					
			<?php
				while($fila = $resultadoJugadores->fetch_object()) {?>
					<tr id="<?= $fila->id_jugador ?>">
						<td class="id_jugador"><?=$fila->id_jugador?></td>
						<td class="nombre_completo"><a href="jugadorseleccionado.php?id_jugador=<?=$fila->id_jugador?>"><?=$fila->nombre_completo?></a></td>
						<td class="draft"><?=$fila->draft?></td>
						<td class="posicion"><?=$fila->posicion?></td>
						<td class="universidad"><?=$fila->universidad?></td>
						<td>
							<button class="btn-floating red boton-eliminar"><i class="material-icons">delete</i></button>
							<button class="btn-floating yellow boton-editar disabled"><i class="material-icons">mode_edit</i></button>
						</td>
							
					</tr>
				<?php } //Final del while?>
					
		</table>
        <?php } else { ?>
			<table class="responsive-table centered bordered" id="tabla-jugadores">
		    <tr>
			    <th>Id jugador</th>
				<th>Nombre</th>
				<th>Draft</th>
				<th>Posicion</th>
				<th>Universidad</th>
			</tr>
					
			<?php
				while($fila = $resultadoJugadores->fetch_object()) {?>
					<tr id="<?= $fila->id_jugador ?>">
						<td class="id_jugador"><?=$fila->id_jugador?></td>
						<td class="nombre_completo"><a href="jugadorseleccionado.php?id_jugador=<?=$fila->id_jugador?>"><?=$fila->nombre_completo?></a></td>
						<td class="draft"><?=$fila->draft?></td>
						<td class="posicion"><?=$fila->posicion?></td>
						<td class="universidad"><?=$fila->universidad?></td>
													
					</tr>
				<?php } //Final del while?>
		<?php } ?>