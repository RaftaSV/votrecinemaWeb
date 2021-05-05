<!DOCTYPE html>
<html>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"
	type="text/javascript"></script>

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<LINK REL=StyleSheet HREF="CCS/Diseño.css" TYPE="text/css" />

<head>
<meta charset="ISO-8859-1">
<title>VOTRECINEMA</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

</head>
<nav class="nav nav-pills flex-column flex-sm-row">
	<a class="flex-sm-fill text-sm-center nav-link active "
		href="Proveedores.jsp"> <FONT COLOR="white">Proveedores </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link" href="Productos.jsp">
		<FONT COLOR="white">Productos </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link" href="personas.jsp">
		<FONT COLOR="white">Personas </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link  " href="rol.jsp">
		<FONT COLOR="white">Roles </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link" href="Salas.jsp">
		<FONT COLOR="white">Salas </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link" href="Horarios.jsp">
		<FONT COLOR="white">Horarios </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link " href="Peliculas.jsp">
		<FONT COLOR="white">Peliculas </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link " href="Carteleras.jsp">
		<FONT COLOR="white">Carteleras </FONT>
	</a>
</nav>


<body>
	<h1 class="text-center display-1"
		style="font-family: Brush Script MT, arial">
		<font COLOR="black"> PROVEEDORES</font>
	</h1>



	<script type="text/javascript">



		function MOSTRARCRUD() {
			var CRUD = document.getElementById("PANELCRUD"), tabladiv = document.getElementById('tabladiv');

			if (CRUD.style.display === "none") {
				CRUD.style.display = "inline-block";
				tabladiv.style.width = "75%";


			} else {
				CRUD.style.display = "none";
				tabladiv.style.width = "98%";
				document.getElementById('nombre').value = "";
					document.getElementById('telefono').value = "";
					document.getElementById('direccion').value = "";
					document.getElementById('idpro').value = "";


			}
		}


		function cargardatos() {

			$(document).ready(function () {


				$.post('controllerProveedores', function (datos) {
					try {
						var tabla = document.getElementById('tablaDatos');
						$('#tablaDatos tbody tr').remove();
						datos.forEach(function (item) {
							tabla.innerHTML += `
								 <tr onclick="seleccionar()" >
									<td id="id"> ${item.idProveedor} </td>
								    <td >  ${item.Nombre} </td>
								   <td> ${item.Telefono}</td>
								   <td>${item.Direccion} </td>
								   <td>
									<a class="btn btn-danger" href="controllerProveedores?id=${item.idProveedor}&Eliminar=btne"> ELIMINAR </a> 
									</td>
									</tr>
								`

						})
						
					} catch (e) {
						// TODO: handle exception
					}
					
				});



			})


		}


		function seleccionar() {

			var index,
				table = document.getElementById('tablaDatos');

			for (var i = 1; i < table.rows.length; i++) {
				table.rows[i].onclick = function () {
					// remove the background from the previous selected row
					if (typeof index !== "undefined") {
						table.rows[index].classList.toggle("selected");
					}
					console.log(typeof index);
					// get the selected row index
					index = this.rowIndex;
					// add class selected to the row
					this.classList.toggle("selected");
					console.log(typeof index);
				};
			}

		}

		function leerdatos() {
			var rowIdx;

			var id, nombre, direccion, telefono;
			var tabla = document.getElementById('tablaDatos');
			var rows = tabla.getElementsByTagName('tr');
			var selectedRow;
			var rowCellValue;
			for (i = 0; i < rows.length; i++) {
				rows[i].onclick = function () {
					rowIdx = this.rowIndex;
					selectedRow = this.cells;
					var contador = 1;
					for (j = 0; j < selectedRow.length; j++) {

						if (contador == 1) {
							id = selectedRow[j].innerText;
							contador++;
						} else if (contador == 2) {
							nombre = selectedRow[j].innerText;
							contador++;
						}
						else if (contador == 3) {
							telefono = selectedRow[j].innerText;
							contador++;
						}
						else if (contador == 4) {
							direccion = selectedRow[j].innerText;
							contador++;
						}

					}
					if (id > 0) {

						document.getElementById('nombre').value = nombre;
						document.getElementById('telefono').value = telefono;
						document.getElementById('direccion').value = direccion;
						document.getElementById('idpro').value = id;

					}
				}
			}
		}

		function Guardar() {
			
			$(document).ready(function () {
			var id, nombre, direccion, telefono,Eliminar;
			nombre = $("#nombre").val();
			telefono = $("#telefono").val();
			direccion = $("#direccion").val();
			id = $("#idpro").val();
			Eliminar="no";
			console.log(nombre);
			$.get('controllerProveedores', {
				
				id, nombre, direccion, telefono, Eliminar
				


			});
		}
			
			
		)
		document.getElementById('nombre').value = "";
						document.getElementById('telefono').value = "";
						document.getElementById('direccion').value = "";
						document.getElementById('idpro').value = "";
						window.location.reload();
		
		}


		



		window.onload = cargardatos;

	</script>
	<button id="EDITAR" onclick="MOSTRARCRUD()">CRUD</button>
	<div>

		<div class="tabla" id="tabladiv">
			<table id="tablaDatos" onclick="leerdatos() " class="table table-sm table-dark">
				<thead >
					<th>ID</th>
					<th>NOMBRE</th>
					<th>TELEFONO</th>
					<th>DIRECCION</th>
					<th>ACCIONES</th>
				</thead>
			</table>

		</div>


		<div class="crud" id="PANELCRUD" style="display: none;">
			<center>
				<input type="hidden" id="idpro"> <br> <label>Nombre</label>
				<br> <input type="text" id="nombre"> <br> <label>Telefono</label>
				<br> <input type="tel" id="telefono"> <br> <label>Direccion</label>
				<br> <input type="text" id="direccion"> <br> <br>

				<button onclick="Guardar()">Guardar</button>




			</center>
		</div>
	</div>

</body>

</html>