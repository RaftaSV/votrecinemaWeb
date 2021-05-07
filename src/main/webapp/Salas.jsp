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
	<a class="flex-sm-fill text-sm-center nav-link  "
		href="Proveedores.jsp"> <FONT COLOR="white">Proveedores </FONT></a> <a
		class="flex-sm-fill text-sm-center nav-link " href="Productos.jsp">
		<FONT COLOR="white ">Productos </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link" href="personas.jsp">
		<FONT COLOR="white">Personas </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link  " href="rol.jsp"><FONT
		COLOR="white">Roles </FONT> </a> 
		<a class="flex-sm-fill text-sm-center nav-link active" href="Salas.jsp">
		<FONT COLOR="white">Salas </FONT></a>
		<a class="flex-sm-fill text-sm-center nav-link" href="Horarios.jsp">
		<FONT COLOR="white">Horarios </FONT></a>
			<a class="flex-sm-fill text-sm-center nav-link " href="Peliculas.jsp">
		<FONT COLOR="white">Peliculas </FONT></a>
		<a class="flex-sm-fill text-sm-center nav-link " href="Carteleras.jsp">
		<FONT COLOR="white">Carteleras </FONT> </a>
</nav>

<h1 class="text-center display-1"
	style="font-family: Brush Script MT, arial"  > <font COLOR="black"> SALAS</font></h1>
<style type="text/css">
<!--
body {
	background-image:
		url(https://previews.123rf.com/images/peshkova/peshkova1708/peshkova170800949/84565450-resumen-circuito-cerebro-fondo-concepto-de-inteligencia-artificial-representaci%C3%B3n-3d.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

#mail {
	width: 100%;
	position: fixed;
}
-->
</style>


<body>


	<script type="text/javascript">

	function MOSTRARCRUD() {
		var CRUD = document.getElementById("PANELCRUD"), tabladiv = document.getElementById('tabladiv');

		if (CRUD.style.display === "none") {
			CRUD.style.display = "inline-block";
			tabladiv.style.width = "75%";


		} else {
			CRUD.style.display = "none";
			tabladiv.style.width = "98%";
			document.getElementById('capacidad').value = "";
				document.getElementById('NumeroSala').value = "";
				document.getElementById('idsala').value = "";


		}
	}


	function cargardatos() {

		$(document).ready(function () {


			$.post('controllerSalas', function (datos) {
				try {
					var tabla = document.getElementById('tablaDatos');
					$('#tablaDatos tbody tr').remove();
					datos.forEach(function (item) {
						tabla.innerHTML += `
							 <tr onclick="seleccionar()" >
								<td id="id"> ${item.idSala} </td>
							    <td >  ${item.Capacidad} </td>
							   <td> ${item.Numero_Sala}</td>
							   <td>
								<a class="btn btn-danger" href="controllerSalas?id=${item.idSala}&Eliminar=btne"> ELIMINAR </a> 
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

		var id, capacidad, NumeroSala;
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
						capacidad = selectedRow[j].innerText;
						contador++;
					}
					else if (contador == 3) {
						NumeroSala = selectedRow[j].innerText;
						contador++;
					}

				}
				if (id > 0) {

					document.getElementById('capacidad').value = capacidad;
					document.getElementById('NumeroSala').value = NumeroSala;
					document.getElementById('idsala').value = id;

				}
			}
		}
	}

	function Guardar() {
		
		$(document).ready(function () {
		var id, capacidad, NumeroSala ,Eliminar;
		capacidad = $("#capacidad").val();
		NumeroSala = $("#NumeroSala").val();
		id = $("#idsala").val();
		Eliminar="no";
		console.log(capacidad);
		$.get('controllerSalas', {
			
			id, capacidad, NumeroSala ,Eliminar
			


		});
	}
		
		
	)
					document.getElementById('capacidad').value = "";
					document.getElementById('NumeroSala').value = "";
					document.getElementById('idsala').value = "";
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
					<th>CAPACIDAD</th>
					<th>NUMERO DE SALA</th>
					<th> ACCIONES </th>
				</thead>
			</table>

		</div>


		<div class="crud" id="PANELCRUD" style="display: none;">
			<center>
				<input type="hidden" id="idsala"> <br> 
				<label>Capacidad</label>
				<br> <input type="text" id="capacidad"> <br> 
				<label>Numero de Sala</label>
				<br> <input type="text" id="NumeroSala"> <br> 
				

				<button onclick="Guardar()">Guardar</button>
			</center>
		</div>
	</div>


</body>
</html>