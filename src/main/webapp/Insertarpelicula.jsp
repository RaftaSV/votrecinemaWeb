<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<LINK REL=StyleSheet HREF="CCS/pelicula.css" TYPE="text/css" />
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	
		<h1 style="font-family: Brush Script MT, arial" align="center">PELICULAS</h1>
	
	<div id="imagen">
		<img alt="" src="Imagenes/fondonegro.jpg" id="portada" width="100%"
			height="100%">
	</div>
	<div id="crud" align="center">
		<form action="controllerCRUDPeliculas" method="post"
			enctype="multipart/form-data" onsubmit="return validar()">
			
				<input type="hidden" id="id" name="id"> <label>NOMBRE</label>
				<br> <input type="hidden" id="portadaa" name="portadaa">
				<input type="text" id="nombre" name="nombre"> <br> <label>PORTADA</label>
				<br> <input type="file" id="imagenp" name="imagenp"
					accept="image/png,.jpg" onclick="fondonegroimagenselecionada()">
				<br> <br> <label>FECHA DE ESTRENO</label> <br> <input
					type="date" id="fecha" name="fecha" value="2019-08-10" /> <br>
				<label>DURACION</label> <br> <label>HORAS</label> <label>
					MINUTOS</label> <br> <select id="hora" name="hora">
				</select> <select id="minutos" name="minutos">
				</select> <br> <br> <label>SINOPSIS</label> <br>
				<textarea id="sinopsis" name="sinopsis" rows="3" cols="40"></textarea>
				<br> <br> <select id="tipo" name="tipo">
				</select> <select id="clasificacion" name="clasificacion">
				</select> <br> <br> <label>PRECIO</label> <br> <input
					type="number" id="precio" name="precio" min="1" /> <br> <br>
				<input type="submit" class="btn btn-success" value="GUARDAR ">
			
		</form>


	</div>
	<script type="text/javascript">
	
	function cargar(){
	    opener.location.reload();
	    window.close();
	}
	
	function formatofecha(date) {
	    var d = new Date(date),
	        month = '' + (d.getMonth() +1),
	        day = '' + d.getDate(),
	        year = d.getFullYear();

	    if (month.length < 2) 
	        month = '0' + month;
	    if (day.length < 2) 
	        day = '0' + day;

	    return [year, month, day].join('-');
	}
	 
	
		//cargar todos los combobox que muestran la informacion 
		function CargarCombobox() {

			hora = document.getElementById('hora');
			minutos = document.getElementById('minutos');
			tipo = document.getElementById('tipo');
			
			clasificacion = document.getElementById('clasificacion');
			// cargar combobox tipo y clasificacion
			var contador=0;
			while(contador<3){
				opciontipo = document.createElement('option');
				opcionclas = document.createElement('option');
			if(contador==0){
				opciontipo.value = 0;
				opciontipo.text = "2D";
				tipo.appendChild(opciontipo);
				opcionclas.value = 0;
				opcionclas.text = "TODA LA FAMILIA";
				contador=1;
				clasificacion.appendChild(opcionclas);
			}else if (contador==1){
				opciontipo.value = 1;
				opciontipo.text = "3D";
				tipo.appendChild(opciontipo);
				opcionclas.value = 1;
				opcionclas.text = "MAYORES 15 AÑOS";
				clasificacion.appendChild(opcionclas);
				contador=2;
			}else{
				opcionclas.value = 2;
				opcionclas.text = "MAYORES 18 AÑOS";
				clasificacion.appendChild(opcionclas);
				contador=3;
			}
				
			}
			//cargar conbobox de hora y minutos
			for (i = 1; i <= 5; i++) {
				option = document.createElement('option');
				option.value = i;
				option.text = i;
				hora.appendChild(option);
			}
			for (i = 1; i <= 59; i++) {
				option = document.createElement('option');
				option.value = i;
				option.text = i;
				minutos.appendChild(option);
			}
			var queryString = window.location.search;
			var datos = new URLSearchParams(queryString);
			var id = datos.get('id');

			if (id != "0") {
				document.getElementById('id').value = id;
				document.getElementById('nombre').value = datos.get('nombre');
				hora.selectedIndex = datos.get('hora') - 1;
				minutos.SelectedIndex = datos.get('minutos') - 1;
				var imagen = datos.get('portada');
				document.getElementById('portada').src = "Imagenes/" + imagen;
				var fecha = datos.get('year').replace(".","").replace('ene','Jan').replace('abr','Apr').replace('ago','Aug');
				document.getElementById('fecha').value = formatofecha(fecha);
				document.getElementById('sinopsis').value = datos.get('sinopsis');
				tipo.selectedIndex = datos.get('tipo');
			    clasificacion.selectedIndex = datos.get('clasificacion');
			    document.getElementById('precio').value = datos.get('precio'); 
                document.getElementById('portadaa').value = datos.get('portada');
			}else{
				
				document.getElementById('portada').src="Imagenes/fondonegro.jpg";
			}

		}
		// validar la informacion para guardar la pelicula
		function validar() {

			var id = $('#id').val();
			var nombre = $('#nombre').val();
			var portada = $('#imagenp').val();
			var fecha = $('#fecha').val();
			var hora = $('#hora').val();
			var minutos = $('#minutos').val();
			var sinopsis = $('#sinopsis').val();
			var tipo = $('#tipo').val();
			var clasificacion = $('#clasificacion').val();
			var precio = $('#precio').val();

			if(id!=0){
				if (nombre == "") {
					$('#nombre').focus();
					return false;
				}  else if (sinopsis == "") {
					$('#sinopsis').focus();
					return false;
				} else if (precio == "") {
					$('#precio').focus();
					return false;
				} else {

					return true;
					
				}
				
			}else{
				if (nombre == "") {
					$('#nombre').focus();
					return false;
				} else if (portada == "") {
					alert('Debe seleccionar una imagen');
					$('#imagenp').focus();
					return false;
				} else if (sinopsis == "") {
					$('#sinopsis').focus();
					return false;
				} else if (precio == "") {
					$('#precio').focus();
					return false;
				} else {

					return true;
					window.opener.document.location="http://localhost:8080/Votre/Principal.jsp";
				}
				
			}
			
		}

		//Asiganar la imagen que se selecciona al img para mostrarlo
		function leerImagen(input) {
			if (input.files && input.files[0]) { //Revisamos que el input tenga contenido
				var imagen = new FileReader(); //Leemos el contenido

				imagen.onload = function(e) { //Al cargar el contenido lo pasamos como atributo de la imagen de arriba
					$('#portada').attr('src', e.target.result);
				}

				imagen.readAsDataURL(input.files[0]);
			}
		}
		//Cuando el input cambie (se cargue un nuevo archivo) se va a ejecutar de nuevo el cambio de imagen y se verá reflejado.
		$("#imagenp").change(function() {
			leerImagen(this);
		});

		//validar solo numeros y decimales
		$('#precio').on(
				'input',
				function() {
					this.value = this.value.replace(/[^0-9,.]/g, '').replace(
							/,/g, '.');
				});

		//cambiar la imagen por una en negro al dar click sobre seleccionar archivo
		function fondonegroimagenselecionada() {
			var id = $('#id').val();
			if(id>0){
				
			}else{
			$("#portada").attr("src", "Imagenes/fondonegro.jpg");
			}
		}

		window.onload = CargarCombobox();
	</script>

</body>
</html>