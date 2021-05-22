<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<html>
<head>
<title>VOTRECINEMA</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

</head>


<h1 class="text-center display-1"
	style="font-family: Brush Script MT, arial">
	<font COLOR="black"> PELICULAS</font>
</h1>

<body>


	<script type="text/javascript">
	
	
		$(document).ready(function() {

			$.post('controllerPelicula', {
			//Enviar informacion

			}, function(response) {
				//Recibir informacion
 
				let datos = JSON.parse(response);
				console.log(datos);
				
				var tabla = document.getElementById('tablapelicula');
				for (let item of datos) {
           var hora = item.Duracion ;
          var minutos = item.Duracion.substr(2,3).replace(":","")
           hora = hora.substr(0,2);
           if(hora!=01){
        	   if(minutos>1 && minutos<9){
        		   hora=hora.replace("0","")+" Horas con " +minutos.replace("0","")   + " minutos " ;
        		  
        	   }else if(minutos>9){
        		   
        		   hora=hora.replace("0","")+" Horas con " + minutos + " minutos" ;
        	   }else{
        		   
        		   hora=hora.replace("0","")+" Horas con " +minutos.replace("0","")   + " minuto " ;
        	   }
        	   
           }else{
        	   if(minutos>1 && minutos<9){
        		   hora=hora.replace("0","")+" Hora con " +minutos.replace("0","")   + " minutos " ;
        		  
        	   }else if(minutos>9){
        		   
        		   hora=hora.replace("0","")+" Hora con " + minutos + " minutos" ;
        	   }else{
        		   
        		   hora=hora.replace("0","")+" Hora con " +minutos.replace("0","")   + " minuto " ;
        	   }
        	   
           }
         var Tipo = item.Tipo;
         var clasificacion = item.clasificacion;
        if (clasificacion ==0){
        	clasificacion ="Para toda la familia";
        	
        }else if (clasificacion ==1){
        	
        	clasificacion ="Para mayores de 15 años";
        }else{
        	
        	clasificacion ="Para mayores de 18 años";
 	
        }
         
         if (Tipo == 0){
        	 Tipo ="2D";
         }else {
        	 Tipo ="3D"; 
         }
					
					tabla.innerHTML += `
			 <tr>
				<td> ${item.idPelicula} </td>
				<td> <img src="Imagenes/${item.Portada}" WIDTH=150 HEIGHT=250 > </td>
			    <td>  ${item.Nombre} </td>
			    <td>  ${hora}  </td>
			    <td>  ${item.Year} </td>
			    <td>  ${Tipo} </td>
			    <td>  ${clasificacion} </td>
			    <td align="justify"> ${item.Sipnosis} </td>
			    <td>
				<a class="btn btn-danger" href="controllerPelicula?id=${item.idPelicula}&Eliminar=btne"  style="text-align:center;" > ELIMINAR </a> 
				<a class="btn btn-success" href="controllerPelicula?id=${item.idPelicula}&Eliminar=btne"  style="text-align:center;" > ACTUALIZAR </a> 

				</td>

			</tr>
		`
				}

			});
		});
	</script>

	<table class="table table-dark" id="tablapelicula">
		<thead>
			<th>ID PELICULA</th>
			<th> PORTADA </th>  
			<th>NOMBRE</th>
			<th> DURACION </th>
			<th>FECHA DE ESTRENO</th>
			<th> TIPO </th>
			<th> CLASIFICACION </th>
			<th>SINOPSIS</th>
			<th>ACCIONES</th> 

		</thead>
	</table>


</body>
</html>