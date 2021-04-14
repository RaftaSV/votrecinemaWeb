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
<nav class="nav nav-pills flex-column flex-sm-row">
	<a class="flex-sm-fill text-sm-center nav-link  "
		href="Proveedores.jsp"> <FONT COLOR="white">Proveedores </FONT></a> <a
		class="flex-sm-fill text-sm-center nav-link" href="Productos.jsp">
		<FONT COLOR="white ">Productos </FONT>
	</a> <a class="flex-sm-fill text-sm-center nav-link active"
		href="personas.jsp"> <FONT COLOR="white">Personas </FONT></a> <a
		class="flex-sm-fill text-sm-center nav-link  " href="rol.jsp"><FONT
		COLOR="white">Roles </FONT></a>
		<a class="flex-sm-fill text-sm-center nav-link" href="Salas.jsp">
		<FONT COLOR="white">Salas </FONT>
</nav>
<body>

	<h1 class="text-center display-1"
		style="font-family: Brush Script MT, arial"> <font COLOR="black"> PERSONAS</font></h1>
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
		$(document).ready(function (){
			
			$.post('controllerPersonas', {
				
			}, function(response){
				
				let datos = JSON.parse(response);
				//console.log(datos);
				
				var tabla = document.getElementById('tablaPersonas');
				for(let item of datos){
					
					tabla.innerHTML += `
						 <tr>
						<td> ${item.idPersona} </td>
						    <td> ${item.Nombres} </td>
						    <td> ${item.Apellidos}</td>
						    <td>${item.DUI} </td>
							</tr>
						`
		                  }
				
			});
			
	
		});
		
	</script>

	<table class="table table-dark" id="tablaPersonas">
		<thead>
			<th>ID</th>
			<th>NOMBRES</th>
			<th>APELLIDOS</th>
			<th>DUI</th>
		</thead>
	</table>

</body>
</html>