<%@ page contentType="text/html; charset=UTF-8" %>
    <!DOCTYPE html>

    <html>

    <head>

        <title>VOTRECINEMA</title>

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
    </head>


    <h1 class="text-center display-1" style="font-family: Brush Script MT, arial">
        <font COLOR="black"> PELICULAS</font>
    </h1>

    <body>
        <% HttpSession sesion = (HttpSession) request.getSession();
        String id = String.valueOf(sesion.getAttribute("id"));
		String tipo = String.valueOf(sesion.getAttribute("tipo"));
        if (id.equals(null) || id.equals("null") || id.equals("Error") || tipo.equals("1") || tipo.equals("2")) {
               response.sendRedirect("Index.jsp");
           }
        %>

            <label> BUSCAR </label>
            <input type="text" id="buscar" onkeyup="buscar() " />
            <br>
            <br>

            <table class="table table-dark" id="tablapelicula">
                <thead>
                    <th style="display:none;">ID PELICULA</th>
                    <th> PORTADA </th>
                    <th>UBICACION IMAGEN </th>
                    <th>NOMBRE</th>
                    <th>DURACION</th>
                    <th> TIPO </th>
                    <th> CLASIFICACION </th>

                </thead>
            </table>


            <script type="text/javascript">
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
                            var hora = item.Duracion;
                            var minutos = item.Duracion.substr(2, 3).replace(":", "")
                            hora = hora.substr(0, 2);
                            var hora1 = hora = hora.replace("0", "");
                            if (hora != 01) {
                                if (minutos > 1 && minutos < 9) {
                                    hora = hora.replace("0", "") + " Horas con " + minutos.replace("0", "") + " minutos ";

                                    minutos = minutos.replace("0", "");
                                } else if (minutos > 9) {

                                    hora = hora.replace("0", "") + " Horas con " + minutos + " minutos";
                                    minutos = minutos;
                                } else {

                                    hora = hora.replace("0", "") + " Horas con " + minutos.replace("0", "") + " minuto ";
                                    minutos = minutos.replace("0", "");

                                }

                            } else {
                                if (minutos > 1 && minutos < 9) {
                                    hora = hora.replace("0", "") + " Hora con " + minutos.replace("0", "") + " minutos ";
                                    minutos = minutos.replace("0", "");
                                } else if (minutos > 9) {
                                    hora = hora.replace("0", "") + " Hora con " + minutos + " minutos";
                                    minutos = minutos;
                                } else {
                                    minutos = minutos.replace("0", "");
                                    hora = hora.replace("0", "") + " Hora con " + minutos.replace("0", "") + " minuto ";
                                }

                            }
                            var Tipo = item.Tipo;
                            var clasificacion = item.clasificacion;
                            if (clasificacion == 0) {
                                clasificacion = "Para toda la familia";

                            } else if (clasificacion == 1) {

                                clasificacion = "Para mayores de 15 años";
                            } else {

                                clasificacion = "Para mayores de 18 años";

                            }

                            if (Tipo == 0) {
                                Tipo = "2D";
                            } else {
                                Tipo = "3D";
                            }

                            tabla.innerHTML += `
				 <tr>
					<td style="display:none;"> ${item.idPelicula} </td>
					<td> <img src="Imagenes/${item.Portada}" WIDTH=150 HEIGHT=250 > </td>
				    <td> Imagenes/${item.Portada} </td>
					<td>  ${item.Nombre} </td>
					<td>  ${hora}  </td>
					<td>  ${Tipo} </td>
				    <td>  ${clasificacion} </td>
				    

				</tr>
			`
                        }

                    });
                });

                $(document).on("click", "#tablapelicula tbody tr", function() {


                    var id, nombre, portada;
                    id = $(this).find('td:first-child').html().replace(" ", "");
                    nombre = $(this).find('td:nth-child(4)').html();
                    portada = $(this).find('td:nth-child(3)').html();


                    swal("Alerta", "Desea seleccionnar" + nombre + " ?", "info", {
                            buttons: {
                                cancelar: {
                                    text: "Cancelar"
                                },
                                Selecionar: {
                                    text: "Selecionar"
                                },
                            },
                        })
                        .then((value) => {
                            switch (value) {

                                case "cancelar":

                                    break;

                                case "Selecionar":

                                    window.opener.document.getElementById('portada').src = portada;
                                    window.opener.document.getElementById('idpelicula').value = id;
                                    window.opener.document.getElementById('pelicula').value = nombre;
                                    close();

                            }
                        })


                });

                function buscar() {

                    try {
                        const datos = document.getElementById('tablapelicula');
                        const busqueda = document.getElementById('buscar').value.toLowerCase();
                        let total = 0;

                        // Recorremos todas las filas con contenido de la tabla
                        for (let i = 1; i < datos.rows.length; i++) {
                            // Si el td tiene la clase "noSearch" no se busca en su cntenido
                            if (datos.rows[i].classList.contains("noSearch")) {
                                continue;
                            }

                            let found = false;
                            const cellsOfRow = datos.rows[i].getElementsByTagName('td');
                            // Recorremos todas las celdas
                            for (let j = 0; j < cellsOfRow.length && !found; j++) {
                                const compareWith = cellsOfRow[3].innerHTML.toLowerCase();
                                // Buscamos el texto en el contenido dentro de la celda del nombre
                                if (busqueda.length == 0 || compareWith.indexOf(busqueda) > -1) {
                                    found = true;
                                    total++;
                                }
                            }
                            if (found) {
                                datos.rows[i].style.display = '';
                            } else {
                                // si no ha encontrado ninguna coincidencia, esconde la
                                // fila de la tabla
                                datos.rows[i].style.display = 'none';
                            }
                        }

                        // mostramos las coincidencias
                        const lastTR = datos.rows[datos.rows.length - 1];
                        const td = lastTR.querySelector("td");
                        lastTR.classList.remove("hide", "red");
                        if (busqueda == "") {
                            lastTR.classList.add("hide");
                        } else if (total) {
                            td.innerHTML = "Se ha encontrado " + total + " coincidencia" + ((total > 1) ? "s" : "");
                        } else {
                            lastTR.classList.add("red");
                            td.innerHTML = "No se han encontrado coincidencias";
                        }



                    } catch (error) {

                    }

                }
            </script>


    </body>

    </html>