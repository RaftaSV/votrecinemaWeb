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
<body>


	<script type="text/javascript">
		$(document).ready(function() {

			$.post('ControllerCarteleras', {
			//Enviar informacion

			}, function(response) {
				//Recibir informacion

				let datos = JSON.parse(response);
				//console.log(datos);
				
				var tabla = document.getElementById('tablacartelera');
				for (let item of datos) {
					var hora = item.Duracion ;
			          var minutos = item.Duracion.substr(2,3).replace(":","")
			           hora = hora.substr(0,2);
			          var hora1 = hora=hora.replace("0","");
			           if(hora!=01){
			        	   if(minutos>1 && minutos<9){
			        		   hora=hora.replace("0","")+" Horas con " +minutos.replace("0","")   + " minutos " ;
			        		 
			        		   minutos=minutos.replace("0","");
			        	   }else if(minutos>9){
			        		   
			        		   hora=hora.replace("0","")+" Horas con " + minutos + " minutos" ;
			        		   minutos=minutos;
			        	   }else{
			        		   
			        		   hora=hora.replace("0","")+" Horas con " +minutos.replace("0","")   + " minuto " ;
			        		   minutos=minutos.replace("0","");

			        	   }
			        	   
			           }else{
			        	   if(minutos>1 && minutos<9){
			        		   hora=hora.replace("0","")+" Hora con " +minutos.replace("0","")   + " minutos " ;
			        		   minutos=minutos.replace("0","");
			        	   }else if(minutos>9){
			        		   hora=hora.replace("0","")+" Hora con " + minutos + " minutos" ;
			        		   minutos=minutos;
			        	   }else{
			        		   minutos=minutos.replace("0","");
			        		   hora=hora.replace("0","")+" Hora con " +minutos.replace("0","")   + " minuto " ;
			        	   }
			        	   
			           }
			         var Tipo = item.Tipo;
			         var clasificacion = item.clasificacion;
			        if (clasificacion ==0){
			        	clasificacion ="Para toda la familia";
			        	
			        }else if (clasificacion ==1){
			        	
			        	clasificacion ="Para mayores de 15 a�os";
			        }else{
			        	
			        	clasificacion ="Para mayores de 18 a�os";
			 	
			        }
			         
			         if (Tipo == 0){
			        	 Tipo ="2D";
			         }else {
			        	 Tipo ="3D"; 
			         }
					tabla.innerHTML += `
			 <tr>
						<td style="display:none;"> ${item.Idcartelera} </td>
						<td style="display:none;"> ${item.idPelicula} </td>
						<td> <img src="Imagenes/${item.Portada}" WIDTH=150 HEIGHT=250 > </td>
						<td> ${item.Nombre} </td>
						<td> ${item.fecha} </td>
						<td style="display:none;"> ${item.Id_Horario} </td>
						<td> ${item.horaInicio} </td>
						<td style="display:none;"> ${item.Id_Sala} </td>
						<td> ${item.numero_sala} </td>
						<td> ${hora} </td>
						<td> $ ${item.precio} </td>
						<td> ${Tipo} </td>
						<td> ${item.Sipnosis} </td>
						<td>
						<a class="btn btn-success" href="Insertarcartelera.jsp?id=0"  style="text-align:center;" > NUEVA </a> 
						<br>
						<a class="btn btn-primary" href="Insertarcartelera.jsp?id=${item.Idcartelera}&idpelicula=${item.idPelicula}&nombre=${item.Nombre}&hora=${item.Id_Horario}&fecha=${item.fecha}&sala=${item.Id_Sala}&portada=${item.Portada}"  style="text-align:center;" > ACTUALIZAR </a> 
						<br>
						<a class="btn btn-danger" href="controllerCRUDcarteleras?id=${item.Idcartelera}&"  style="text-align:center;" > ELIMINAR </a> 

						</td>
					    
			</tr>
		`
				}

			});
		});
	</script>

	<table class="table table-dark" id="tablacartelera">
		<thead>
			<th style="display:none;">ID CARTELERAS </th>
			<th style="display:none;"> ID PELICULA</th>
			<th> PORTADA</th>
			<th>NOMBRE</th>
			<th>FECHA</th>
			<th style="display:none;"> ID HORARIO </th>
			<th>HORA</th>
			<th style="display:none;"> ID SALA</th>
			<th> SALA </th>
			<th>DURACION</th>
			<th> PRECIO </th>
			<th> TIPO </th>
		    <th>SINOPSIS</th>
		    <th> ACCIONES</th>

		</thead>
	</table>


</body>
</html>