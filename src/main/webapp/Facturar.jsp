<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
    </head>
    <!-- css -->
    <LINK REL=StyleSheet HREF="CCS/facturar.css" TYPE="text/css" />
    <!--- ajax -->
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <body>

        <input type="date" id="fecha">
        <Label id="cliente">CLIENTE</Label> <br>
        <select id="clientes"></select>

        <br>
        <br>
        <input type="text" id="buscarcartelera" placeholder="Buscarpelicula" onkeyup="buscar()"><br> <br>
        <table class="table table-dark" id="tablacartelera">
            <thead>
                <th style="display:none;">ID CARTELERAS </th>
                <th>NOMBRE</th>
                <th style="display:none;"> ID SALA</th>
                <th> SALA </th>
                <th>DURACION</th>

                <th> TIPO </th>

            </thead>

        </table>

        <input type="text" id="buscar" placeholder="Buscarproducto" onkeyup="buscarproductos()">
        <br>
        <table id="tablaproductos" class="table table-sm table-dark">
            <thead>
                <th style="display: none;">IDPRODUCTO</th>
                <th>PRODUCTO</th>
                <th>PRECIO</th>
                <th>CANTIDAD</th>
            </thead>
        </table>

        <script type="text/javascript">
            var fecha = new Date();
            var fechaactual = fecha.getFullYear() + "/" + (fecha.getMonth() + 1) + "/" + fecha.getDate();
            document.getElementById('fecha').value = formatofecha(fechaactual);

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

            $(document).ready(function() {

                $.post('controllerProductos', {
                    //Enviar informacion

                }, function(response) {
                    //Recibir informacion

                    let datos = JSON.parse(response);
                    //console.log(datos);

                    var tabla = document.getElementById('tablaproductos');
                    for (let item of datos) {

                        tabla.innerHTML += `
 <tr>
    <td style="display:none;"> ${item.idProducto} </td>
    <td> ${item.Producto} </td>
    <td> ${item.precio}</td>
    <td>${item.Cantidad} </td>
    </tr>
`


                    }


                });
            });


            function buscar() {
                try {

                    const datos = document.getElementById('tablacartelera');
                    const busqueda = document.getElementById('buscarcartelera').value.toLowerCase();
                    let total = 0;

                    // Recorremos todas las filas con contenido de la tabla
                    for (let i = 1; i < datos.rows.length; i++) {
                        // Si el td tiene la clase "noSearch " no se busca en su cntenido
                        if (datos.rows[i].classList.contains("noSearch ")) {
                            continue;
                        }

                        let found = false;
                        const cellsOfRow = datos.rows[i].getElementsByTagName('td');
                        // Recorremos todas las celdas
                        for (let j = 0; j < cellsOfRow.length && !found; j++) {
                            const compareWith = cellsOfRow[1].innerHTML.toLowerCase();
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
                    const td = lastTR.querySelector("td ");
                    lastTR.classList.remove("hide ", "red ");
                    if (busqueda == " ") {
                        lastTR.classList.add("hide ");
                    } else if (total) {
                        td.innerHTML = "Se ha encontrado " + total + " coincidencia " + ((total > 1) ? "s " : " ");
                    } else {
                        lastTR.classList.add("red ");
                        td.innerHTML = "No se han encontrado coincidencias ";
                    }



                } catch (error) {

                }

            }

            function buscarproductos() {
                try {

                    const datos = document.getElementById('tablaproductos');
                    const busqueda = document.getElementById('buscar').value.toLowerCase();
                    let total = 0;

                    // Recorremos todas las filas con contenido de la tabla
                    for (let i = 1; i < datos.rows.length; i++) {
                        // Si el td tiene la clase "noSearch " no se busca en su cntenido
                        if (datos.rows[i].classList.contains("noSearch ")) {
                            continue;
                        }

                        let found = false;
                        const cellsOfRow = datos.rows[i].getElementsByTagName('td');
                        // Recorremos todas las celdas
                        for (let j = 0; j < cellsOfRow.length && !found; j++) {
                            const compareWith = cellsOfRow[1].innerHTML.toLowerCase();
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
                    const td = lastTR.querySelector("td ");
                    lastTR.classList.remove("hide ", "red ");
                    if (busqueda == " ") {
                        lastTR.classList.add("hide ");
                    } else if (total) {
                        td.innerHTML = "Se ha encontrado " + total + " coincidencia " + ((total > 1) ? "s " : " ");
                    } else {
                        lastTR.classList.add("red ");
                        td.innerHTML = "No se han encontrado coincidencias ";
                    }



                } catch (error) {

                }

            }


            $(document).ready(function() {

                $.post('ControllerCarteleras', {
                    //Enviar informacion

                }, function(response) {
                    //Recibir informacion

                    let datos = JSON.parse(response);
                    //console.log(datos);

                    var tabla = document.getElementById('tablacartelera');
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

                            clasificacion = "Para mayores de 15 a�os";
                        } else {

                            clasificacion = "Para mayores de 18 a�os";

                        }

                        if (Tipo == 0) {
                            Tipo = "2D";
                        } else {
                            Tipo = "3D";
                        }
                        tabla.innerHTML += `
			 <tr>
						<td style="display:none;"> ${item.Idcartelera} </td>
						<td> ${item.Nombre} </td>
						<td style="display:none;"> ${item.Id_Sala} </td>
						<td> ${item.numero_sala} </td>
						<td> ${hora} </td>
					
						<td> ${Tipo} </td>
					
					    
			</tr>
		`
                    }

                });
            });

            $(document).ready(function() {


                $.post('ControllerClientes', function(datos) {
                    try {
                        var combo = document.getElementById('clientes');

                        datos.forEach(function(item) {
                            //console.log(item);
                            combo.innerHTML += `
                <option value="${item.idRol}">${item.Nombres} </option>
                    
                `

                        })

                    } catch (e) {
                        // TODO: handle exception
                    }

                });
            })
        </script>



    </body>

    </html>