<!DOCTYPE html>
<html>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"
	type="text/javascript"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
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

<body>

<h1 class="text-center display-1"
		style="font-family: Brush Script MT, arial">
		<font COLOR="black"> ROLES</font>
	</h1>

	<script type="text/javascript">
	
	function MOSTRARCRUD() {
		var CRUD = document.getElementById("PANELCRUD"), tabladiv = document.getElementById('tabladiv');
		document.getElementById('id').value = "";
		document.getElementById('usuario').value = "";
		document.getElementById('password').value = "";
		if (CRUD.style.display === "none") {
			CRUD.style.display = "inline-block";
			tabladiv.style.width = "75%";
			


		} else {
			CRUD.style.display = "none";
			tabladiv.style.width = "98%";
			


		}
		
	}

			$(document).ready(function () {

				$.post('controllerRoles', {
					//Enviar informacion

				}, function (response) {
					//Recibir informacion

					let datos = JSON.parse(response);
					console.log(datos);

					var tabla = document.getElementById('tablaroles');
					for (let item of datos) {

						tabla.innerHTML += `
				 <tr>
					<td style="display:none;"> ${item.idRol} </td>
					<td>${item.Nombres} </td>
				    <td> ${item.Usuario} </td>
				    <td style="display:none;"> ${item.Password}</td>
				    <td>${item.TipoRol} </td>
				    <td style="display:none;" >${item.Id_Persona}</td>
				    <td>
				    <a class="btn btn-danger" href="controllerRoles?id=${item.idRol}&Eliminar=btne"> ELIMINAR </a> 
				    </td>
					</tr>
				`
                  
						
					}


				});
			});
			

			function leerdatos() {
				var rowIdx;
				var idRol, usuario, password, tiporoll,persona,rol,tipo;
				var tabla = document.getElementById('tablaroles');
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
								idRol = selectedRow[j].innerText;
								contador++;
							} else if (contador == 2) {
								usuario = selectedRow[j].innerText;
								contador++;
							}
							else if (contador == 3) {
								password = selectedRow[j].innerText;
								contador++;
							}
							else if (contador == 4) {
								tiporoll = selectedRow[j].innerText;
								contador++;
							}
							else if (contador == 5) {
								persona = selectedRow[j].innerText;
								contador++;
							}else if (contador == 6) {
								rol = selectedRow[j].innerText;
 
								console.log(rol);
								contador++;
							}

						}
						if (idRol > 0) {
							var select=document.getElementById('combo');
							for(var i=1;i<select.length;i++)
							{
								if(select.options[i].text==rol)
								{
									// seleccionamos el valor que coincide
									select.selectedIndex=i;
								}else{
									select.selectedIndex=0;
								}
							}
						
							document.getElementById('id').value = idRol;
							document.getElementById('usuario').value = usuario;
							document.getElementById('password').value = password;
							
							
							

						}
						
						if (idRol > 0) {
							var select=document.getElementById('comborol');
							for(var i=1;i<select.length;i++)
							{
								if(select.options[i].text==tipo)
								{
									// seleccionamos el valor que coincide
									select.selectedIndex=i;
								}else{
									select.selectedIndex=0;
								}
							}
						
							document.getElementById('id').value = idRol;
							document.getElementById('usuario').value = usuario;
							document.getElementById('password').value = password;
							
							
							

						}
						
					
					    }
					}
				}
			
	
			
			function cargarcombo() {

				$(document).ready(function () {


					$.post('controllerRoles', function (datos) {
						try {
							var combo = document.getElementById('combo');
							
							datos.forEach(function (item) {
								combo.innerHTML += `
									<option value="${item.id_Persona}">${item.Nombres} </option>
										<td style="display:none;">  </td>
									`

							})
							
						} catch (e) {
							// TODO: handle exception
						}

					});
				})
			}
			
			function cargarcomborol() {

				$(document).ready(function () {


					$.post('controllerRoles', function (datos) {
						try {
							var comborol = document.getElementById('comborol');
							
							datos.forEach(function (item) {
								combo.innerHTML += `
									<option value="${item.TipoRol}">Elige Rol </option>
										<td style="display:none;">  </td>
									`

							})
							
						} catch (e) {
							// TODO: handle exception
						}

					});
				})
			}
			
			function Guardar() {
				
				$(document).ready(function () {
					var idRol, usuario, password, tiporol, idpersona;
					id = $("#id").val();
					usuario = $("#usuario").val();
					password = $("#password").val();
					tiporol = $("#comborol").val();
					idpersona =$("#combo").val();
				Eliminar="no";
				 
				
				$.get('controllerRoles', {
					
					id, usuario, password, tiporol, idpersona,Eliminar


				});
			}
				
				
			)
			                document.getElementById('id').value = "";
							document.getElementById('usuario').value = "";
							document.getElementById('password').value = "";
							
							window.location.reload();
			
			}
			
window.onload = cargarcombo();
window.onload = cargarcomborol();
		</script>
	<button id="EDITAR" onclick="MOSTRARCRUD()" class="far fa-edit fa-2x"></button>
	<div>

		<div class="tabla" id="tabladiv">
			<table id="tablaroles" onclick="leerdatos() "
				class="table table-sm table-dark">
				<thead>
					<th style="display: none;">ID</th>
					<th>NOMBRES</th>
					<th>USUARIOS</th>
					<th>TIPO</th>
					<th style="display: none;">IDPERSONA</th>
					<th>ACCIONES</th>
				</thead>
			</table>
		</div>


		<div class="crud" id="PANELCRUD" style="display: none;">
			<center>
				<input type="hidden" id="id"> <br>
				<label>Usuario</label>
				<br> <input type="text" id="usuario"> <br> 
				<label>Password</label>
				<br> <input type="text" id="password"> <br> 
				<label>Tipo Rol</label> <br> 
				<select class="" id="comborol" required>
				</select> <br> 
				<label>Persona</label>
				<br> <select class="" id="combo" required>
				</select> <br> <br>
				<button onclick="Guardar()">Guardar</button>
			</center>
		</div>
	</div>
</div>
</body>

</html>