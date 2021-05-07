<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<html>
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


<h1 class="text-center display-1"
	style="font-family: Brush Script MT, arial">
	<font COLOR="black"> CARTELERAS</font>
</h1>
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
		$(document).ready(function() {

			$.post('ControllerCarteleras', {
			//Enviar informacion

			}, function(response) {
				//Recibir informacion

				let datos = JSON.parse(response);
				console.log(datos);
				
				var tabla = document.getElementById('tablacartelera');
				for (let item of datos) {

					tabla.innerHTML += `
			 <tr>
						<td> ${item.idCarteleras} </td>
						<td> ${item.Nombre} </td>
						<td> ${item.Duracion} </td>
						<td> ${item.Fecha} </td>
						<td> ${item.Sipnosis} </td>
					    
			</tr>
		`
				}

			});
		});
	</script>

	<table class="table table-dark" id="tablacartelera">
		<thead>
			<th>ID CARTELERAS </th>
			<th>NOMBRE</th>
			<th>DURACION</th>
			<th> FECHA DE ESTRENO</th>
		    <th>SINOPSIS</th>

		</thead>
	</table>


</body>
</html>