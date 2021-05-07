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
	style="font-family: Brush Script MT, arial"  > <font COLOR="black"> HORARIOS</font></h1>


<body>


	<script type="text/javascript">

$(document).ready(function () {

	$.post('controllerHorarios', {
		//Enviar informacion

	}, function (response) {
		//Recibir informacion

		let datos = JSON.parse(response);
		console.log(datos);
		var tabla = document.getElementById('tablahorario');
		for (let item of datos) {

			tabla.innerHTML += `
	 <tr>
		<td style="display:none;"> ${item.idHorario} </td>
	    <td> <time> ${item.HoraInicio} </time></td>
	   
	</tr>
`
		}

	});
});


</script>

	<table class="table table-dark" id="tablahorario">
		<thead>
			<th style="display:none;">ID HORARIO</th>
			<th>HORA DE INICIO</th>
		
		</thead>
	</table>


</body>
</html>