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
		<font COLOR="black"> PROVEEDORES</font>
	</h1>



	<script type="text/javascript">



		function MOSTRARCRUD() {
			var CRUD = document.getElementById("PANELCRUD"), tabladiv = document.getElementById('tabladiv');
			document.getElementById('nombre').value = "";
			document.getElementById('telefono').value = "";
			document.getElementById('direccion').value = "";
			document.getElementById('idpro').value = "";
			if (CRUD.style.display === "none") {
				CRUD.style.display = "inline-block";
				tabladiv.style.width = "75%";


			} else {
				CRUD.style.display = "none";
				tabladiv.style.width = "98%";
				


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
									<td style="display:none;"> ${item.idProveedor} </td>
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
	<button id="EDITAR" onclick="MOSTRARCRUD()" class="far fa-edit fa-2x"></button>
	<div>

		<div class="tabla" id="tabladiv">
			<table id="tablaDatos" onclick="leerdatos() " class="table table-sm table-dark">
				<thead >
					<th style="display:none;">ID</th>
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