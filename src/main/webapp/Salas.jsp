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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
</head>

<h1 class="text-center display-1"
	style="font-family: Brush Script MT, arial"  > <font COLOR="black"> SALAS</font></h1>


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
								<td style="display:none;"> ${item.idSala} </td>
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

	
function solonumeros(e){
		
		key=e.keyCode || e.which;
		teclado=String.fromCharCode(key);
		numero="0123456789";
		especiales="8-37-38-46";
		tecladoEspecial=false;
		for(var i in especiales){
			
			if(key==especiales[i]){
				
				tecladoEspecial=true;
			}
		}
		
		if(numero.indexOf(teclado) == -1 && !tecladoEspecial){
			return false;
		}
	}
	

	
	function Guardar() {
		
		$(document).ready(function () {
		var id, capacidad, NumeroSala ,Eliminar;
		id = $("#idsala").val();
		capacidad = $("#capacidad").val();
		NumeroSala = $("#NumeroSala").val();
		Eliminar="no";	
		
			if(capacidad=="" ){
				alert("Es necesario llenar el campo de Capacidad");
				$("#capacidad").focus();
				
				
			} else if( NumeroSala==""){
				alert("Es necesario llenar el campo de Numero de Sala o la sala ya existe");
				$("#NumeroSala").focus();
				
				
			}else if($("#NumeroSala").length != $("#NumeroSala").val()){
				
				$.get('controllerSalas', {
					
					id, capacidad, NumeroSala ,Eliminar			
					
				
				});
				
				document.getElementById('capacidad').value = "";
				document.getElementById('NumeroSala').value = "";
				document.getElementById('idsala').value = "";
				window.location.reload();
				
				
			}else{
				alert("El Numero de sala que intenta ingresar ya existe");
				$("#NumeroSala").focus();
			}		
				
			
				
				
			
		
		})
					
		
	}

	window.onload = cargardatos;

</script>

	<button id="EDITAR" onclick="MOSTRARCRUD()"class="far fa-edit fa-2x"></button>
	<div>

		<div class="tabla" id="tabladiv">
			<table id="tablaDatos" onclick="leerdatos() " class="table table-sm table-dark">
				<thead >
					<th style="display:none;">ID</th>
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
				<br> <input type="text" id="capacidad" onkeypress="return solonumeros(event)" > <br> 
				<label>Numero de Sala</label>
				<br> <input type="text" id="NumeroSala" onkeypress="return solonumeros(event)"> <br> 
				<br>

				<button onclick="Guardar()">Guardar</button>
			</center>
		</div>
	</div>


</body>
</html>