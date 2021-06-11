<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>

    <html>

    <head>

        <title>VOTRECINEMA</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <LINK REL=StyleSheet HREF="CCS/Diseno.css" TYPE="text/css" />
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    </head>

    <h1 class="text-center display-1" style="font-family: 'Old Standard TT', serif;">
        <font COLOR="black"> HORARIOS</font>
    </h1>

    <body>
        <% HttpSession sesion = (HttpSession) request.getSession();
        String id = String.valueOf(sesion.getAttribute("id"));
		String tipo = String.valueOf(sesion.getAttribute("tipo"));
        if (id.equals(null) || id.equals("null") || id.equals("Error") || tipo.equals("1") || tipo.equals("2")) {
               response.sendRedirect("Index.jsp");
           }
        %>


            <script type="text/javascript">
                function MOSTRARCRUD() {
                    var CRUD = document.getElementById("PANELCRUD"),
                        tabladiv = document.getElementById('tabladiv');

                    if (CRUD.style.display === "none") {
                        CRUD.style.display = "inline-block";
                        tabladiv.style.width = "75%";
                        document.getElementById('Horario').value = "09:00";


                    } else {
                        CRUD.style.display = "none";
                        tabladiv.style.width = "98%";

                    }
                }


                $(document).ready(function() {

                    $.post('controllerHorarios', {
                        //Enviar informacion

                    }, function(response) {
                        //Recibir informacion

                        let datos = response;
                        //console.log(datos);
                        var tabla = document.getElementById('tablahorario');
                        for (let item of datos) {

                            tabla.innerHTML += `
	 <tr>
		<td style="display:none;"> ${item.idHorario} </td>
	    <td style="text-align:center;"> ${item.HoraInicio} </td>
	    <td>
		<a class="btn btn-danger" href="controllerHorarios?id=${item.idHorario}&Eliminar=btne"  style="text-align:center;" > ELIMINAR </a> 
		</td>
	   
	</tr>
`
                        }

                    });
                });
                
                $(document).on("click", "#tablahorario tr", function() {
                	var id, horario;

                	id = $(this).find('td:first-child').html();
                	horario = $(this).find('td:nth-child(2)').html();
                	var hora = horario.substr(0, 3);
                    var minutos = horario.substr(3, 3);
                    var indicador = horario.substr(9, 10).replace('p.&nbsp;m', '1');
                    
                    if (indicador == 1) {
                        hora = hora.replace('0', '');
                        hora = parseInt(hora);
                        
                        if (hora < 12) {
                            hora = hora + 12;
                        }

                    }
                    
                    var horacompleta = hora + ":" + minutos.replace(':', '');
                  
                    if (id > 0) {

                        document.getElementById('id').value = id;
                      
                       document.getElementById('Horario').value = horacompleta.replace(' ', '');

                    }
           
                });

                
                
                

                function Guardar() {
                    $(document).ready(function() {
                            var id, hora, Eliminar, evaluar;
                            hora = $("#Horario").val();
                            evaluar = $("#Horario").val().substr(0, 2);
                            id = $("#id").val();
                            Eliminar = "no";

                            if (evaluar < 9) {
                                swal({
                                    title: "No es un horario laboral",
                                    text: "Porfavor, seleccione una hora entre las 9 am y las 10 pm",
                                    icon: "warning",
                                });
                                $("#Hora").focus();

                            } else if (evaluar > 22) {
                                swal({
                                    title: "No es un horario laboral",
                                    text: "Porfavor, seleccione una hora entre las 9 am y las 10 pm",
                                    icon: "warning",
                                });
                                $("#Hora").focus();

                            } else {
                                swal("Alerta", "¿Desea guardar la hora " + hora + "?", "info", {
                                    buttons: {
                                        Guardar: {
                                            text: "Guardar"
                                        },
                                        Cancelar: {
                                            text: "Cancelar"
                                        },
                                    }
                                }).then((value) => {
                                    switch (value) {

                                        case "Cancelar":
                                            swal({
                                                title: "Cancelado",
                                                icon: "error"
                                            })
                                            break;

                                        case "Guardar":

                                            $.get('controllerHorarios', {

                                                Eliminar,
                                                id,
                                                hora
                                            });
                                            window.location.reload();
                                    }
                                })
                            } //CierreElse
                        }) //CierreDocument
                } //CierreFunction
            </script>
            <button id="EDITAR" onclick="MOSTRARCRUD()" class="far fa-edit fa-2x"></button>
            <div>

                <div class="tabla" id="tabladiv">
                    <table class="table table-dark" id="tablahorario">
                        <thead>
                            <th style="display:none;">ID HORARIO</th>
                            <th style="text-align:center;">HORA DE INICIO</th>
                            <th>ACCIONES</th>


                        </thead>
                    </table>
                </div>

                <div class="crud" id="PANELCRUD" style="display: none;">
                    <center>
                        <input type="hidden" id="id"> <br>
                        <label>Horario</label>
                        <br> <input type="time" id="Horario" name="hora" max="17:00" step="900" />
                        <br>
                        <br>
                        <button class="Confirmar" onclick="Guardar()">Guardar</button>
                    </center>
                </div>
            </div>
    </body>

    </html>