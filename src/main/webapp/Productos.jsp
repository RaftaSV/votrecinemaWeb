<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
		class="flex-sm-fill text-sm-center nav-link active"
		href="Productos.jsp"> <FONT COLOR="white ">Productos </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link" href="personas.jsp">
		<FONT COLOR="white">Personas </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link  " href="rol.jsp"><FONT
		COLOR="white">Roles </FONT></a> <a
		class="flex-sm-fill text-sm-center nav-link" href="Salas.jsp"> <FONT
		COLOR="white">Salas </FONT></a> <a
		class="flex-sm-fill text-sm-center nav-link" href="Horarios.jsp">
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
		<font COLOR="black"> PRODUCTOS</font>
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

			$(document).ready(function () {

				$.post('controllerProductos', {
					//Enviar informacion

				}, function (response) {
					//Recibir informacion

					let datos = JSON.parse(response);
					//console.log(datos);

					var tabla = document.getElementById('tablaproductos');
					for (let item of datos) {

						tabla.innerHTML += `
				 <tr>
					<td> ${item.idProducto} </td>
				    <td> ${item.Producto} </td>
				    <td> ${item.precio}</td>
				    <td>${item.Cantidad} </td>
				    <td>${item.idProveedor}</td>
				    <td>${item.Nombre} </td>
				    <td>
				    <a class="btn btn-danger" href="controllerProductos?id=${item.idProducto}&Eliminar=btne"> ELIMINAR </a> 
				    </td>
					</tr>
				`
                  
						
					}


				});
			});
			

			function leerdatos() {
				var rowIdx;
				var idProducto, producto, precio, cantidad,idproveedor;
				var tabla = document.getElementById('tablaproductos');
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
								idProducto = selectedRow[j].innerText;
								contador++;
							} else if (contador == 2) {
								producto = selectedRow[j].innerText;
								contador++;
							}
							else if (contador == 3) {
								precio = selectedRow[j].innerText;
								contador++;
							}
							else if (contador == 4) {
								cantidad = selectedRow[j].innerText;
								contador++;
							}
							else if (contador == 5) {
								idproveedor = selectedRow[j].innerText;
								contador++;
							}

						}
						if (idProducto > 0) {
							idProducto, producto, precio, cantidad,idproveedor;
							document.getElementById('id').value = idProducto;
							document.getElementById('Producto').value = producto;
							document.getElementById('Precio').value = precio;
							document.getElementById('Cantidad').value = cantidad;
							document.getElementById('idpro').value = idproveedor;
						
							

						}
					}
				}
			}


		</script>






	<button id="EDITAR" onclick="MOSTRARCRUD()">CRUD</button>
	<div>

		<div class="tabla" id="tabladiv">
			<table id="tablaproductos" onclick="leerdatos() " class="table table-sm table-dark">
					<thead>
						<th>IDPRODUCTO</th>
						<th>PRODUCTO</th>
						<th>PRECIO</th>
						<th>CANTIDAD</th>
						<th>IDPROVE</th>
						<th>PROVEEDOR</th>
						<th>ACCIONES</th>
					</thead>
				</table>
		</div>


		<div class="crudProductos" id="PANELCRUD" style="display: none;">
			<center>
				<input type="hidden" id="id"> <br> <label>Producto</label>
				<br> <input type="text" id="Producto"> <br> <label>Precio</label>
				<br> <input type="text" id="Precio"> <br> <label>Cantidad</label>
				<br> <input type="text" id="Cantidad"> 
				<br> <label>Proveerdor</label>
				<input type="text" id="idpro">  <br> 
				<br>
				<button onclick="Guardar()">Guardar</button>
			</center>
		</div>
	</div>


</body>
</html>
