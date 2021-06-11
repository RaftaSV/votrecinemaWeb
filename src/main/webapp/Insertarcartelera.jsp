<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <LINK REL=StyleSheet HREF="CCS/pelicula.css" TYPE="text/css" />

    <head>
        <meta charset="ISO-8859-1">
        <title>VOTRECINEMA</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
    </head>



    <body>

        <% HttpSession sesion = (HttpSession) request.getSession();
        String id = String.valueOf(sesion.getAttribute("id"));
		String tipo = String.valueOf(sesion.getAttribute("tipo"));
        if (id.equals(null) || id.equals("null") || id.equals("Error") || tipo.equals("1") || tipo.equals("2")) {
               response.sendRedirect("Index.jsp");
           }
        %>

            <h1 class="text-center display-1" style="font-family: 'Old Standard TT', serif;" align="center">
                <font COLOR="black"> CARTELERAS </font>
            </h1>
            <div id="imagen">
                <img alt="" src="Imagenes/fondonegro.jpg" id="portada" width="100%" height="100%">
            </div>
            <div id="crud" align="center">
                <input type="hidden" id="id" value="0">
                <input type="hidden" id="idpelicula">
                <label>Pelicula</label> <br> <br> <input id="pelicula" disabled>
                <button onclick="buscar()" id="buscar">Seleccionar</button><br> <br>
                <label>Fecha</label>
                <br> <input type="date" id="fecha"> <br> <br>
                <label> Sala</label> <br>
                <select id="sala"> </select> <br>
                <label> Hora </label> <br>
                <select id="hora"></select> <br> <br>
                <button class="Confirmar" onclick="Guardar()">Guardar</button>
            </div>
            <script type="text/javascript">
                var queryString = window.location.search;
                var datos = new URLSearchParams(queryString);
                var id = datos.get('id');





                if (id == 0) {
                    var d = new Date();
                    var fechaactual = d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate();
                    var sala = document.getElementById('sala');
                    document.getElementById('fecha').value = formatofecha(fechaactual);
                    $.post('controllerSalas', function(datos) {

                        try {
                            datos.forEach(function(item) {


                                sala.innerHTML += `
<option value="${item.idSala}"> ${item.Numero_Sala} </option>

`

                            })


                        } catch (e) {

                        }


                    });


                } else {


                    var horario = document.getElementById('hora');
                    horabase = datos.get('hora');
                    $.post('controllerHorarios', function(datos) {

                        try {

                            var contadorhora = 0;
                            var contadorhora1;

                            datos.forEach(function(item) {

                                if (item.idHorario == horabase) {
                                    contadorhora1 = contadorhora;
                                } else {
                                    contadorhora++;

                                }

                                horario.innerHTML += `
				<option value="${item.idHorario}"> ${item.HoraInicio} </option>
					
				`

                            })
                            horario.selectedIndex = contadorhora1;
                        } catch (e) {

                        }


                    });

                    var salabase = datos.get('sala');
                    var sala = document.getElementById('sala');
                    $.post('controllerSalas', function(datos) {

                        try {


                            var contador = 0;
                            var contador1;
                            datos.forEach(function(item) {
                                if (item.idSala == salabase) {
                                    contador1 = contador;

                                } else {

                                    contador++;

                                }
                                sala.innerHTML += `
<option value="${item.idSala}"> ${item.Numero_Sala} </option>

`

                            })
                            sala.selectedIndex = contador1;

                        } catch (e) {

                        }


                    });


                    document.getElementById('id').value = id;
                    document.getElementById('pelicula').value = datos.get('nombre');
                    document.getElementById('fecha').value = formatofecha(datos.get('fecha'));
                    document.getElementById('portada').src = "Imagenes/" + datos.get('portada');
                    document.getElementById('idpelicula').value = datos.get('idpelicula');


                }



                function formatofecha(date) {
                    var d = new Date(date),
                        month = '' + (d.getMonth() + 1),
                        day = '' + d.getDate(),
                        year = d.getFullYear();

                    if (month.length < 2)
                        month = '0' + month;
                    if (day.length < 2)
                        day = '0' + day;

                    return [year, month, day].join('-');
                }


                function cargarhora() {

                    if (id == 0) {

                        var sala = $('#sala').val();
                        var fecha = $('#fecha').val();

                        $(document).ready(function() {

                            var mensaje = "1";

                            $.post('controllerHorarios', {
                                    fecha,
                                    sala,
                                    mensaje
                                },

                                function(datos) {

                                    try {
                                        var horario = document.getElementById('hora');

                                        datos.forEach(function(item) {
                                            $('#hora').empty();
                                            horario.innerHTML += `
									<option value="${item.idHorario}"> ${item.HoraInicio} </option>
										
									`

                                        })

                                    } catch (e) {

                                    }


                                });
                        })
                    }
                }



                $('#buscar').on('click', function() {

                    cargarhora();

                });

                $('#sala').on('click', function() {

                    cargarhora();

                });


                $('#fecha').on('click', function() {
                    cargarhora();
                });

                $('#fecha').on('change', function() {
                    cargarhora();

                });

                function buscar() {

                    window.open('http://localhost:8080/Votre/Buscarpelicula.jsp', 'peliculas', 'menubar=no,status=no,toolbar=no');
                }

                function Guardar() {

                    $(document).ready(function() {
                            var id, idpelicula, idHorario, fecha, sala, Eliminar;
                            id = $("#id").val();
                            idpelicula = $("#idpelicula").val();
                            idHorario = $("#hora").val();
                            fecha = $("#fecha").val();
                            sala = $("#sala").val();


                            if (idpelicula == "") {
                                swal({
                                    title: "Alerta",
                                    text: "Debe seleccionar una pelicula existente",
                                    icon: "warning",
                                });
                                $("#idpelicula").focus();

                            } else {
                                swal("Alerta", "¿½Desea guardar la cartelera?", "info", {
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
                                                    icon: "error",
                                                })
                                                break;

                                            case "Guardar":
                                                $.post('controllerCRUDcarteleras', {

                                                    id,
                                                    idpelicula,
                                                    idHorario,
                                                    fecha,
                                                    sala
                                                });
                                                window.location.href = "http://localhost:8080/Votre/Carteleras.jsp";
                                                break;
                                        }
                                    })
                            }
                        }) //CierreDocument


                } //CierreGuardar
            </script>


    </body>

    </html>