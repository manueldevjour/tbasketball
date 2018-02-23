<?php
			$comprobacionAdmin = $connectdb->query("SELECT administrador FROM usuarios WHERE usuario = '$usuario';");
			$filaAdministrador = $comprobacionAdmin->fetch_object();
			if($filaAdministrador->administrador == 1) {?>
			<h6 class="user">Aquí tienes una lista con los equipos de la liga y disponibles para editar</h6><br>
			<button class="btn-floating green boton-anadir" id="nuevoEquipo" disabled><i class="material-icons">playlist_add</i></button>
				<table class="responsive-table centered bordered" id="tablaequipo">
					<tr>
						<th>Id franquicia</th>
						<th>Nombre franquicia</th>
						<th>Conferencia</th>
						<th>División</th>
						<th>Sede</th>
						<th>Acciones</th>
					</tr>
					
					<?php
						while($fila = $resultado->fetch_object()) {?>
						<tr id="<?= $fila->id_franquicia ?>">
							<td class="id_franquicia"><?=$fila->id_franquicia?></td>
							<td class="nombre_franquicia"><a href="equiposeleccionado.php?id_franquicia=<?=$fila->id_franquicia?>"><?=$fila->nombre_franquicia?></a></td>
							<td class="conferencia"><?=$fila->conferencia?></td>
							<td class="division"><?=$fila->division?></td>
							<td class="sede"><?=$fila->sede?></td>
							<td>
								<button class="btn-floating red boton-eliminar"><i class="material-icons">delete</i></button>
								<button class="btn-floating yellow boton-editar disabled"><i class="material-icons">mode_edit</i></button>
							</td>
							
						</tr>
						<?php } //Final del while?>
					
				</table>
		<?php } else { ?>
			<table class="responsive-table centered bordered" id="tabla-equipo-usuarios">
				<tr>
					<th>Id franquicia</th>
					<th>Nombre franquicia</th>
					<th>Conferencia</th>
					<th>División</th>
					<th>Sede</th>
				</tr>
				
				<?php
					while($fila = $resultado->fetch_object()) {?>
						<tr id="<?= $fila->id_franquicia ?>">
							<td class="id_franquicia"><?=$fila->id_franquicia?></td>
							<td class="nombre_franquicia"><a href="equiposeleccionado.php?id_franquicia=<?=$fila->id_franquicia?>"><?=$fila->nombre_franquicia?></td>
							<td class="conferencia"><?=$fila->conferencia?></td>
							<td class="division"><?=$fila->division?></td>
							<td class="sede"><?=$fila->sede?></td>
						</tr>
					<?php } //Final del while?>
				
			</table>
		<?php } ?>