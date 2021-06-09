<%@ page contentType="text/html; charset=UTF-8"%>
    <!DOCTYPE html>
    <html>
    <!--- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />

    <!-- CSS -->
    <LINK REL=StyleSheet HREF="CCS/Diseno.css" TYPE="text/css" />
    <!--- ajax -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!--sweetalert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <head>
        <meta charset="ISO-8859-1">
        <title>VOTRECINEMA</title>
        <meta charset="utf-8">

    </head>

    <body>
        <h1 class="text-center display-1" style="font-family: Brush Script MT, arial">
            <font COLOR="black"> PROVEEDORES</font>
        </h1>



        <script type="text/javascript">
            function MOSTRARCRUD() {
                var CRUD = document.getElementById("PANELCRUD"),
                    tabladiv = document.getElementById('tabladiv');
                document.getElementById('nombre').value = "";
                document.getElementById('telefono').value = "";
                document.getElementById('direccion').value = "";
                document.getElementById('idpro').value = "";
                if (CRUD.style.display === "none") {
                    CRUD.style.display = "inline-block";
                    tabladiv.style.width = "75%";


                } else {
                    CRUD.style.display = "none";
                    tabladiv.style.width = "98%";



                }
            }


            function cargardatos() {

                $(document).ready(function() {


                    $.post('controllerProveedores', function(datos) {
                        try {
                            var tabla = document.getElementById('tablaDatos');
                            $('#tablaDatos tbody tr').remove();
                            datos.forEach(function(item) {
                                tabla.innerHTML += `
								 <tr>
									<td style="display:none;"> ${item.idProveedor} </td>
								    <td >  ${item.Nombre} </td>
								   <td> ${item.Telefono}</td>
								   <td>${item.Direccion} </td>
								   <td>
									<a class="btn btn-danger" href="controllerProveedores?id=${item.idProveedor}&Eliminar=btne"> ELIMINAR </a> 
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

            //leerdatos
            $(document).on("click", "#tablaDatos tr", function() {
                var idProveedor, Nombre, Telefono, Direccion;

                idProveedor = $(this).find('td:first-child').html();
                Nombre = $(this).find('td:nth-child(2)').html();
                Telefono = $(this).find('td:nth-child(3)').html().replace(" ", "");
                Direccion = $(this).find('td:nth-child(4)').html();

                document.getElementById('idpro').value = idProveedor;
                document.getElementById('nombre').value = Nombre;
                document.getElementById('telefono').value = Telefono;
                document.getElementById('direccion').value = Direccion;
            });



            function Guardar() {

                $(document).ready(function() {
                    var id, nombre, direccion, telefono, Eliminar;
                    nombre = $("#nombre").val();
                    telefono = $("#telefono").val();
                    direccion = $("#direccion").val();
                    id = $("#idpro").val();
                    Eliminar = "no";


                    if (nombre == "") {
                        swal({
                            title: "Alerta",
                            text: "Debe rellenar un nombre",
                            icon: "warning",
                        });


                        $("#nombre").focus();

                    } else if (telefono == "") {
                        swal({
                            title: "Alerta",
                            text: "Ingrese un numero de telefono",
                            icon: "warning",
                        });

                        $("#telefono").focus();

                    } else if (direccion == "") {
                        swal({
                            title: "Alerta",
                            text: "Ingrese una direccion",
                            icon: "warning",
                        });
                        $("#direccion").focus();
                    } else {
                        swal("Alerta", "Desea guardar el proveedor " + nombre + " ?", "info", {
                                buttons: {
                                    cancelar: {
                                        text: "Cancelar"
                                    },
                                    Agregar: {
                                        text: "Agregar"
                                    },
                                },
                            })
                            .then((value) => {
                                switch (value) {

                                    case "cancelar":

                                        break;

                                    case "Agregar":

                                        $.get('controllerProveedores', {

                                            id,
                                            nombre,
                                            direccion,
                                            telefono,
                                            Eliminar

                                        });
                                        document.getElementById('nombre').value = "";
                                        document.getElementById('telefono').value = "";
                                        document.getElementById('direccion').value = "";
                                        document.getElementById('idpro').value = "";
                                        cargardatos();

                                }
                            })
                    }
                })

            }
            //validar solo numeros
            function numeros() {
                var numero = ($('#telefono').val().replace("-", ""));
                numero = numero.replace(".", "");
                document.getElementById('telefono').value = numero;
            }

            window.onload = cargardatos;
        </script>
        <button id="EDITAR" onclick="MOSTRARCRUD()" class="far fa-edit fa-2x"></button>
        <div>

            <div class="tabla" id="tabladiv">
                <table id="tablaDatos" class="table table-sm table-dark">
                    <thead>
                        <th style="display:none;">ID</th>
                        <th>NOMBRE</th>
                        <th>TELEFONO</th>
                        <th>DIRECCION</th>
                        <th>ACCIONES</th>
                    </thead>
                </table>

            </div>


            <div class="crud" id="PANELCRUD" style="display: none;">
                <center>
                    <input type="hidden" id="idpro"> <br>
                    <label>Nombre</label>
                    <br> <input type="text" id="nombre"> <br>
                    <label>Telefono</label>
                    <br> <input type="number" id="telefono" onkeyup="numeros()" onkeydown="numeros()"> <br>
                    <label>Direccion</label>
                    <br> <input type="text" id="direccion"> <br> <br>

                    <button class="Confirmar" onclick="Guardar()">Guardar</button>
                </center>
            </div>
        </div>

    </body>

    </html>