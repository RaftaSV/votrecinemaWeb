<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-latest.js"></script>

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
		class="flex-sm-fill text-sm-center nav-link active" href="Productos.jsp">
		<FONT COLOR="white ">Productos </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link" href="personas.jsp">
		<FONT COLOR="white">Personas </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link  " href="rol.jsp"><FONT
		COLOR="white">Roles </FONT></a>

		<a class="flex-sm-fill text-sm-center nav-link" href="Salas.jsp">
		<FONT COLOR="white">Salas </FONT>

		<a class="flex-sm-fill text-sm-center nav-link  " href="Carteleras.jsp"><FONT
		COLOR="white">Carteleras </FONT></a>

</nav>

<body>

	<h1 class="text-center display-1"
		style="font-family: Brush Script MT, arial"> <font COLOR="black"> PRODUCTOS</font></h1>
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

	<script type="text/javascript">

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
				
				    <td>${item.Nombre} </td>
					</tr>
				`
                  
						
					}


				});
			});
	// Rafael Antonio Gonzalez Portillo

		</script>
	<table class="table table-dark" id="tablaproductos">
		<thead>
			<th>IDPRODUCTO</th>
			<th>PRODUCTO</th>
			<th>PRECIO</th>
			<th>CANTIDAD</th>
			<th>PROVEEDOR</th>
		</thead>
	</table>

</body>
</html>
