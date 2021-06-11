<!DOCTYPE html>
<html>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
    <% HttpSession sesion = (HttpSession) request.getSession();
    String id = String.valueOf(sesion.getAttribute("id"));
    String tipo = String.valueOf(sesion.getAttribute("tipo"));
    if (id.equals(null) || id.equals("null") || id.equals("Error") || tipo.equals("1") || tipo.equals("2")) {
           response.sendRedirect("Index.jsp");
       }
    %>

        <h1 class="text-center display-1" style="font-family: 'Old Standard TT', serif;">
            <font COLOR="black"> PERSONAS </font>
        </h1>



        <script type="text/javascript">
            function MOSTRARCRUD() {
                var CRUD = document.getElementById("PANELCRUD"),
                    tabladiv = document.getElementById('tabladiv');

                document.getElementById('nombre').value = "";
                document.getElementById('apellido').value = "";
                document.getElementById('dui').value = "";
                document.getElementById('idper').value = "";

                if (CRUD.style.display === "none") {
                    CRUD.style.display = "inline-block";
                    tabladiv.style.width = "75%";


                } else {

                    CRUD.style.display = "none";
                    tabladiv.style.width = "98%";
                }
            }

            //Cuando la p�gina est� cargada completamente
            $(document).ready(function() {

                setTimeout(cargardatos, 1000);
            });

            //funcion para cargar datos
            function cargardatos() {

                $(document).ready(function() {


                    $.post('controllerPersonas', function(datos) {
                        try {
                            var tabla = document.getElementById('tablaDatos');
                            $('#tablaDatos tbody tr').remove();
                            datos.forEach(function(item) {
                                tabla.innerHTML += `
								 <tr  >
									<td style="display:none;"> ${item.idPersona} </td>
								    <td >  ${item.Nombres} </td>
								   <td> ${item.Apellidos}</td>
								   <td>${item.DUI} </td>
								   <td>
									<a class="btn btn-danger" href="controllerPersonas?id=${item.idPersona}&Eliminar=btne"> ELIMINAR </a> 
									</td>
									</tr>
								`
                            })

                        } catch (e) {}
                    });
                })
            }

            //leerdatos
            $(document).on("click", "#tablaDatos tr", function() {
                var idPersona, Nombres, Apellidos, DUI;

                idPersona = $(this).find('td:first-child').html();
                Nombres = $(this).find('td:nth-child(2)').html();
                Apellidos = $(this).find('td:nth-child(3)').html();
                DUI = $(this).find('td:nth-child(4)').html();

                document.getElementById('idper').value = idPersona;
                document.getElementById('nombre').value = Nombres;
                document.getElementById('apellido').value = Apellidos;
                document.getElementById('dui').value = DUI;
            });

            function solonumeros(e) {

                key = e.keyCode || e.which;
                teclado = String.fromCharCode(key);
                numero = "0123456789";
                especiales = "8-37-38-46";
                tecladoEspecial = false;
                for (var i in especiales) {

                    if (key == especiales[i]) {

                        tecladoEspecial = true;
                    }
                }

                if (numero.indexOf(teclado) == -1 && !tecladoEspecial) {
                    return false;
                }
                if (this.value.length <= 9) {
                    return true;
                }
            }

            //funcion para el metodo guardar 
            function Guardar() {

                $(document).ready(function() {
                        var id, nombre, apellido, dui, Eliminar;
                        nombre = $("#nombre").val();
                        apellido = $("#apellido").val();
                        dui = $("#dui").val();
                        id = $("#idper").val();
                        Eliminar = "no";

                        if (nombre == "") {
                            swal({
                                title: "Alerta",
                                text: "Debe rellenar un nombre",
                                icon: "warning"
                            });
                            $("#nombre").focus();


                        } else if (apellido == "") {
                            swal({
                                title: "Alerta",
                                text: "Debe rellenar un apellido",
                                icon: "warning"
                            });
                            $("#apellido").focus();


                        } else if (dui == "") {
                            swal({
                                title: "Alerta",
                                text: "Porfavor, ingrese un numero de DUI",
                                icon: "warning"
                            });
                            $("#dui").focus();

                        } else {
                            swal("Alerta", "Desea guardar a " + nombre + "?", "info", {
                                    buttons: {
                                        Guardar: {
                                            text: "Guardar"
                                        },
                                        Cancelar: {
                                            text: "Cancelar"
                                        },
                                    }
                                })
                                .then((value) => {
                                        switch (value) {

                                            case "Cancelar":
                                                swal({
                                                    title: "Cancelado",
                                                    icon: "error"
                                                })
                                                break;

                                            case "Guardar":

                                                document.getElementById('nombre').value = "#nombre";
                                                document.getElementById('apellido').value = "#apellido";
                                                document.getElementById('dui').value = "#dui";
                                                $.get('controllerPersonas', {
                                                    id,
                                                    nombre,
                                                    apellido,
                                                    dui,
                                                    Eliminar
                                                });
                                                document.getElementById('idper').value = "";
                                                document.getElementById('nombre').value = "";
                                                document.getElementById('apellido').value = "";
                                                document.getElementById('dui').value = "";
                                                window.location.reload();

                                                swal({
                                                    title: "Guardado",
                                                    text: "Guardado con exito",
                                                    icon: "success",
                                                })
                                                break;

                                        } //CierreSwitch
                                    } //CierreValue
                                ) //CierreThen

                        } //CierreElse
                    }) //CierreDocument

            } //CierreFunction
            window.onload = cargardatos;
        </script>
        <button id="EDITAR" onclick="MOSTRARCRUD()" class="far fa-edit fa-2x"></button>
        <div>

            <div class="tabla" id="tabladiv">
                <table id="tablaDatos" class="table table-sm table-dark">
                    <thead>
                        <th style="display:none;">ID</th>
                        <th>NOMBRE</th>
                        <th>APELLIDO</th>
                        <th>DUI</th>
                        <th>ACCIONES</th>
                    </thead>
                </table>

            </div>

            <div class="crud" id="PANELCRUD" style="display: none;">
                <center>
                    <input type="hidden" id="idper" value="0"> 
                    <input type="hidden" id="id" value="0"> <br>
                    <label>Nombre</label>
                    <br> <input type="text" id="nombre"> <br>
                    <label>Apellido</label>
                    <br> <input type="text" id="apellido"> <br>
                    <label>DUI</label>
                    <br> <input type="text" id="dui" onkeypress="return solonumeros(event)"> <br>
                    <br>
                    <button class="Confirmar" onclick="Guardar()">Guardar</button>

                </center>
            </div>
        </div>

</body>

</html>