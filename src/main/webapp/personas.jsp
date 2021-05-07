<!DOCTYPE html>
<html>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"
	type="text/javascript"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
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



<body>
	<h1 class="text-center display-1"
		style="font-family: Brush Script MT, arial">
		<font COLOR="black"> PERSONAS </font>
	</h1>



	<script type="text/javascript">



		function MOSTRARCRUD() {
			var CRUD = document.getElementById("PANELCRUD"), tabladiv = document.getElementById('tabladiv');
			
			document.getElementById('nombre').value = "";
			document.getElementById('apellido').value = "";
			document.getElementById('dui').value = "";
			document.getElementById('idper').value = "";
			
			if (CRUD.style.display === "none") {
				CRUD.style.display = "inline-block";
				tabladiv.style.width = "75%";


			} else {
				
				CRUD.style.display = "none";
				tabladiv.style.width = "98%";
			}
		}

		//funcion para cargar datos
		function cargardatos() {

			$(document).ready(function () {


				$.post('controllerPersonas', function (datos) {
					try {
						var tabla = document.getElementById('tablaDatos');
						$('#tablaDatos tbody tr').remove();
						datos.forEach(function (item) {
							tabla.innerHTML += `
								 <tr onclick="seleccionar()" >
									<td style="display:none;"> ${item.idPersona} </td>
								    <td >  ${item.Nombres} </td>
								   <td> ${item.Apellidos}</td>
								   <td>${item.DUI} </td>
								   <td>
									<a class="btn btn-danger" href="controllerPersonas?id=${item.idPersona}&Eliminar=btne"> ELIMINAR </a> 
									</td>
									</tr>
								`
						})
						
					} catch (e) {
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

			var id, nombre, apellido, dui;
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
							apellido = selectedRow[j].innerText;
							contador++;
						}
						else if (contador == 4) {
							dui = selectedRow[j].innerText;
							contador++;
						}

					}
					if (id > 0) {

						document.getElementById('nombre').value = nombre;
						document.getElementById('apellido').value = apellido;
						document.getElementById('dui').value = dui;
						document.getElementById('idper').value = id;

					}
				}
			}
		}
		//funcion para el metodo guardar 
		function Guardar() {
			
			$(document).ready(function () {
			var id, nombre, apellido, dui, Eliminar;
			nombre = $("#nombre").val();
			apellido = $("#apellido").val();
			dui = $("#dui").val();
			id = $("#idper").val();
			Eliminar="no";
			$.get('controllerPersonas', {
				
				id, nombre, apellido, dui, Eliminar
		
			});
		}
		)
		document.getElementById('nombre').value = "";
						document.getElementById('apellido').value = "";
						document.getElementById('dui').value = "";
						document.getElementById('idper').value = "";
						window.location.reload();
		
		}

		window.onload = cargardatos;

	</script>
	<button id="EDITAR" onclick="MOSTRARCRUD()" class="far fa-edit fa-2x"></button>
	<div>

		<div class="tabla" id="tabladiv">
			<table id="tablaDatos" onclick="leerdatos() " class="table table-sm table-dark">
				<thead >
				<th style="display:none;">ID</th>
					<th>NOMBRE</th>
					<th>APELLIDO</th>
					<th>DUI</th>
					<th>ACCIONES</th>
				</thead>
			</table>

		</div>
		
		<div class="crud" id="PANELCRUD" style="display: none;">
			<center>
				<input type="hidden" id="idper"> <br> <label>Nombre</label>
				<br> <input type="text" id="nombre"> <br> <label>Apellido</label>
				<br> <input type="tel" id="apellido"> <br> <label>DUI</label>
				<br> <input type="text" id="dui"> <br> <br>

				<button onclick="Guardar()">Guardar</button>

			</center>
		</div>
	</div>

</body>

</html>