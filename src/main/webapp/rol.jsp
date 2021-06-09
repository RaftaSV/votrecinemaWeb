<!DOCTYPE html>
<html>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<LINK REL=StyleSheet HREF="CCS/Diseno.css" TYPE="text/css" />

<head>
    <meta charset="ISO-8859-1">
    <title>VOTRECINEMA</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

</head>

<body>

    <h1 class="text-center display-1" style="font-family: Brush Script MT, arial">
        <font COLOR="black"> ROLES</font>
    </h1>

    <script type="text/javascript">
        function MOSTRARCRUD() {
            var CRUD = document.getElementById("PANELCRUD"),
                tabladiv = document.getElementById('tabladiv');
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

        $(document).ready(function() {

            $.post('controllerRoles', {
                //Enviar informacion

            }, function(response) {
                //Recibir informacion

                let datos = JSON.parse(response);
                //console.log(datos);

                var tabla = document.getElementById('tablaroles');
                for (let item of datos) {
                    var tipo = item.TipoRol;
                    if (tipo == 0) {
                        tipo = "ADMIN";
                    } else if (tipo == 1) {
                        tipo = "CAJERO";
                    } else {
                        tipo = "USUARIO";
                    }

                    tabla.innerHTML += `
					
				 <tr>
					<td  style="display: none;"> ${item.idRol} </td>
					<td>${item.Nombres} </td>
				    <td> ${item.Usuario} </td>
				    <td style="display: none;" > ${item.Pasword}</td>
				    <td style="display: none;">${item.TipoRol} </td>
				    <td style="display: none;">${item.Id_Persona}</td>
				    <td> ${tipo} </td>
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
            var idRol, usuario, password = " ",
                tiporoll, persona;
            var tabla = document.getElementById('tablaroles');
            var rows = tabla.getElementsByTagName('tr');
            var selectedRow;
            var rowCellValue;
            for (i = 0; i < rows.length; i++) {
                rows[i].onclick = function() {
                    rowIdx = this.rowIndex;
                    selectedRow = this.cells;
                    var contador = 1;
                    for (j = 0; j < selectedRow.length; j++) {
                        if (contador == 1) {
                            idRol = selectedRow[j].innerText;
                            contador++;
                        } else if (contador == 2) {

                            contador++;
                        } else if (contador == 3) {
                            usuario = selectedRow[j].innerText;
                            contador++;
                        } else if (contador == 4) {

                            contador++;
                        } else if (contador == 5) {
                            tiporoll = selectedRow[j].innerText;
                            contador++;
                        } else if (contador == 6) {
                            persona = selectedRow[j].innerText;
                            contador++;
                        }

                    }
                    if (idRol > 0) {
                        var comborol = document.getElementById('comborol');
                        comborol.selectedIndex = tiporoll;
                        var combo = document.getElementById('combo');
                        for (var i = 0; i < combo.length; i++) {
                            if (combo.options[i].value == persona) {
                                // seleccionamos el valor que coincide
                                combo.selectedIndex = i;
                                break
                            } else {
                                combo.selectedIndex = 0;
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

            $(document).ready(function() {

                $.post('controllerPersonas', function(datos) {
                    try {
                        var combopersonas = document.getElementById('combo');

                        datos.forEach(function(item) {
                            combopersonas.innerHTML += `
								//console.log(${item.id_Persona});
									<option value="${item.idPersona}">${item.Nombres} </option>
										
									`

                        })

                        var comborol = document.getElementById('comborol');

                        comborol.innerHTML += `
								<option value=0> ADMIN</option>
								<option value=1> CAJERO</option>
								<option value=2> USUARIO</option>
									
								`

                    } catch (e) {
                        // TODO: handle exception
                    }

                });
            })
        }

        function Guardar() {

            $(document).ready(function() {
                var idRol, usuario, password, tiporol, idpersona;
                id = $("#id").val();
                usuario = $("#usuario").val();
                password = $("#password").val();
                tiporol = $("#comborol").val();
                idpersona = $("#combo").val();
                Eliminar = "no";

                if (usuario == "") {
                    swal({
                    	title: "Alerta",
                    	text: "El usuario no puede ir vacio",
                    	icon: "warning"
                    });
                    $("#usuario").focus();


                } else if (password == "") {
                	swal({
                    	title: "Alerta",
                    	text: "Es necesario agregar una contraseña",
                    	icon: "warning",
                    });
                    $("#password").focus();


                } else {
                   swal("Alert", "¿Desea guardar al usuario " + usuario + "?", "info", {
                	   buttons: {
                		   Guardar: {
                			   text: "Guardar"
                		   },
                           Cancelar: {
                        	   text: "Cancelar"
                           },
                	   }
                   })
                   .then((value) =>{
                	   switch (value) {
                	   
                	   case "Cancelar":
                		   swal({
              				 title: "Cancelado",
              				 icon: "error"
              			 })
              			 break;
                		   
                	   case "Guardar":
                		   document.getElementById('id').value = "#id";
                           document.getElementById('usuario').value = "#usuario";
                           document.getElementById('password').value = "#password";

                           $.get('controllerRoles', {

                               id,
                               usuario,
                               password,
                               tiporol,
                               idpersona,
                               Eliminar


                           });
                           document.getElementById('id').value = "";
                           document.getElementById('usuario').value = "";
                           document.getElementById('password').value = "";

                           window.location.reload();
              			 swal({
              				 title: "Guardado",
              				 text: "Guardado con exito",
              				 icon: "success"
              			 })
              			 break;
                	   }
                   }
                	)
                }//CierreElse
            })//CierreDocument


        }//CierreGuardar

        window.onload = cargarcombo();
    </script>
    <button id="EDITAR" onclick="MOSTRARCRUD()" class="far fa-edit fa-2x"></button>
    <div>

        <div class="tabla" id="tabladiv">
            <table id="tablaroles" onclick="leerdatos() " class="table table-sm table-dark">
                <thead>
                    <th style="display: none;">ID</th>
                    <th>NOMBRES</th>
                    <th>USUARIO</th>
                    <th style="display: none;">pass</th>
                    <th style="display: none;">TIPO</th>
                    <th style="display: none;">IDPERSONA</th>
                    <th>TIPO</th>
                    <th>ACCIONES</th>
                </thead>
            </table>
        </div>


        <div class="crudProductos" id="PANELCRUD" style="display: none;">
            <center>
                <input type="hidden" id="id"> <br>
                <label>Usuario</label>
                <br> <input type="text" id="usuario"> <br>
                <label>Password</label>
                <br> <input type="password" id="password"> <br>
                <label>Tipo Rol</label> <br>
                <select id="comborol" required>
				</select> <br>
                <label>Persona</label>
                <br> <select id="combo" required>
				</select> <br> <br>
                <button class="Confirmar" onclick="Guardar()">Guardar</button>
            </center>
        </div>
    </div>

</body>

</html>