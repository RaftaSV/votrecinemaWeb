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
	style="font-family: 'Old Standard TT', serif;">
	<font COLOR="black"> PELICULAS</font>
</h1>

<body>
<% HttpSession sesion = (HttpSession) request.getSession();
        String id = String.valueOf(sesion.getAttribute("id"));
        if (id.equals(null) || id.equals("null") || id.equals("Error")) {
               response.sendRedirect("Index.jsp");
           }
        %>

	<script type="text/javascript">
	
	 //Cuando la página esté cargada completamente
	  $(document).ready(function(){
	    //Cada 6 segundos (6000 milisegundos) se ejecutará la función refrescar y cargara la imagen insertada 
	    setTimeout(refrescar, 6000);
	  });
	  function refrescar(){
		  
		  $(document).ready(function() {

				$.post('controllerPelicula', {
				//Enviar informacion

				}, function(response) {
					//Recibir informacion
	 
					let datos = JSON.parse(response);
					//console.log(datos);
					
					var tabla = document.getElementById('tablapelicula');
					$('#tablapelicula tbody tr').remove();
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
					<td style="display:none;"> ${item.idPelicula} </td>
					<td> <img src="Imagenes/${item.Portada}" WIDTH=150 HEIGHT=250 > </td>
				    <td>  ${item.Nombre} </td>
				    <td>  ${hora}  </td>
				    <td>  ${item.Year} </td>
				    <td>  ${Tipo} </td>
				    <td>  ${clasificacion} </td>
				    <td align="justify"> ${item.Sipnosis} </td>
				    <td>
					<a class="btn btn-success" href="Insertarpelicula.jsp?id=0"  style="text-align:center;" > NUEVA </a> 
					<br>
					<a class="btn btn-primary" href="Insertarpelicula.jsp?id=${item.idPelicula}&nombre=${item.Nombre}&hora=${hora1}&minutos=${minutos}&year=${item.Year}&tipo=${item.Tipo}&clasificacion=${item.clasificacion}&sinopsis=${item.Sipnosis}&portada=${item.Portada}&precio=${item.precio}"  style="text-align:center;" > ACTUALIZAR </a> 
					<br>
					<a class="btn btn-danger" href="controllerCRUDPeliculas?id=${item.idPelicula}"  style="text-align:center;" > ELIMINAR </a> 

					</td>

				</tr>
			`
					}

				});
			});
	  }
	
	
		window.onload = refrescar;
	</script>

	<table class="table table-dark" id="tablapelicula">
		<thead>
			<th style="display:none;">ID PELICULA</th>
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