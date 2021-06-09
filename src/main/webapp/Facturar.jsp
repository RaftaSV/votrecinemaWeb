<%@ page contentType="text/html; charset=UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
    </head>
    <!-- css -->
    <LINK REL=StyleSheet HREF="CCS/facturar.css" TYPE="text/css" />
    <!--- ajax -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!--sweetalert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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
                <th style="display:none;">ID PELICULA</th>
                <th WIDTH="100%">NOMBRE</th>
                <th style="display:none;"> ID SALA</th>
                <th> SALA </th>
                <th> TIPO </th>
                <th> HORA </th>

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
        <label id="lblAsientos">ASIENTOS</label>
        <br>
        <select id="Asientos" name="Asientos"></select>
        <br>
        <label class="precios" id="lblprecio">PRECIOS</label>
        <br>
        <input type="radio" class="precio" name="precios" id="child"> <label class="precios" id="childs"></label><br>
        <input type="radio" class="precio" name="precios" id="adultos"> <label class="precios" id="adulto"> </label> <br>
        <input type="radio" class="precio" name="precios" id="adultosm"> <label class="precios" id="adultom"> </label> <br>
        <input type="radio" class="precio" name="precios" id="estu"> <label class="precios" id="estudiantes"> </label>
        <button id="agregar"> AGREGAR </button>
        <br>
        <table id="tabladetalles" class="table table-bordered">
            <thead>
                <th WIDTH="100%">DETALLES</th>
                <th> PRECIO </th>
                <th style="display:none;">IDENTIFICADOR</th>
                <th style="display:none;">idasiento</th>
                <th style="display:none;">idprecio</th>
                <th style="display:none;">idproducto</th>
                <th style="display:none;">Idcartelera</th>
            </thead>

        </table>
        <label for="" class="cobro"> TOTAL</label> <br>
        <label for="" class="cobro" id="totallabel">$ </label> <br>
        <label for="" class="cobro"> EFECTIVO </label> <br>
        <input type="number" class="cobro" id="efectivo" value="0"><br><br>
        <button class="cobro" id="facturar">FACTURAR</button>

        <%
HttpSession sesion = (HttpSession) request.getSession();
		 String cajero = String.valueOf(sesion.getAttribute("id"));
%>
            <script type="text/javascript">
                var fecha = new Date();
                var fechaactual = fecha.getFullYear() + "/" + (fecha.getMonth() + 1) + "/" + fecha.getDate();
                var fechamaxima = fecha.getFullYear() + "/" + (fecha.getMonth() + 1) + "/" + (fecha.getDate() + 7);
                document.getElementById('fecha').value = formatofecha(fechaactual);
                document.getElementById('fecha').min = formatofecha(fechaactual);
                document.getElementById('fecha').max = formatofecha(fechamaxima);
                document.getElementById("adultos").checked = true;
                var precioadulto, precionino, precioadultoma, precioestudiante, horaInicio, nombrepelicula, sala, total, Idcartelera;

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
                                const compareWith = cellsOfRow[2].innerHTML.toLowerCase();
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

                    } catch (error) {

                    }

                }


                $('#fecha').on('change', function() {

                    cargarCarteleras();
                    Limpiar();



                });

                $('#agregar').on('click', function() {
                    var idprecio,
                        precio,
                        idasiento;

                    if ($("#adultos").is(':checked')) {
                        precio = precioadulto;

                    } else if ($("#child").is(':checked')) {
                        precio = precionino;
                    } else if ($("#adultosm").is(':checked')) {
                        precio = precioadultoma;
                    } else if ($("#estu").is(':checked')) {
                        precio = precioestudiante;

                    }

                    var tabla = document.getElementById('tabladetalles');

                    var numeroAsiento = $('select[name="Asientos"] option:selected').text();
                    var asientoid = $('#Asientos').val();
                    var precioid = $('input:radio[name=precios]:checked').val();
                    var fechap = $('#fecha').val();
                    var contador = 1;
                    var contador2 = 1;

                    if (asientoid > 0) {
                        if ($('#tabladetalles tr').length > 1) {

                            $('#tabladetalles tr').each(function() {

                                $(this).find('td:nth-child(4)').each(function() {
                                    if (parseInt($(this).html()) == parseInt(asientoid)) {

                                        contador++
                                    } else {
                                        contador++;
                                        contador2++;
                                    }

                                })
                            })
                            if (contador == contador2) {

                                tabla.innerHTML += `
        <td> ${nombrepelicula}  Hora  de inicio  ${horaInicio} fecha ${fechap} Asiento ${numeroAsiento} en la sala ${sala}  </td>
        <td> $ ${precio}</td>
        <td style="display:none;"> 0 </td>
        <td style="display:none;"> ${asientoid} </td>
        <td style="display:none;"> ${precioid} </td>
        <td style="display:none;"> 0 </td>
        <td style="display:none;"> ${Idcartelera} </td>
                `

                            } else {

                                swal({
                                    title: "Alerta",
                                    text: "El asiento ya fue seleccionado",
                                    icon: "error",
                                });


                            }

                        } else {

                            tabla.innerHTML += `
        <td> ${nombrepelicula}  Hora  de inicio  ${horaInicio} fecha ${fechap} Asiento ${numeroAsiento} en la sala ${sala} </td>
        <td> $ ${precio}</td>
        <td style="display:none;"> 0 </td>
        <td style="display:none;"> ${asientoid} </td>
        <td style="display:none;"> ${precioid} </td>
        <td style="display:none;"> 0 </td>
        <td style="display:none;"> ${Idcartelera} </td>
                `


                        }
                    } else {
                        swal({
                            title: "Alerta",
                            text: "Debe de seleccionar una pelicula, un precio y una asiento",
                            icon: "warning",
                        });
                    }

                    total = 0;
                    $('#tabladetalles tr').each(function() {

                        $(this).find('td:nth-child(2)').each(function() {

                            total = parseFloat(total) + parseFloat(($(this).html().replace("$", "")));



                        })

                    })
                    document.getElementById('totallabel').innerHTML = "$" + total;
                })


                function Limpiar() {
                    $('#Asientos').empty();


                    document.getElementById("adulto").innerHTML = "";
                    document.getElementById("adultos").value = 0;
                    document.getElementById("adultos").checked = true;

                    document.getElementById("child").disabled = false;
                    document.getElementById("childs").innerHTML = " ";
                    document.getElementById("child").value = 0;


                    document.getElementById("adultom").innerHTML = " ";
                    document.getElementById("adultosm").value = 0;


                    document.getElementById("estudiantes").innerHTML = " ";
                    document.getElementById("estu").value = 0;



                }

                $(document).on("click", "#tabladetalles tbody tr", function() {

                    var detalle = $(this).find('td:first-child').html();

                    swal("Alerta", "¿Desea eliminar " + detalle + " ?", "info", {
                            buttons: {
                                cancelar: {
                                    text: "Cancelar"
                                },
                                Quitar: {
                                    text: "Quitar"
                                },
                            },
                        })
                        .then((value) => {
                            switch (value) {

                                case "cancelar":

                                    break;

                                case "Quitar":

                                    $(this).closest("tr").remove();
                                    total = 0;

                                    $('#tabladetalles tr').each(function() {

                                        $(this).find('td:nth-child(2)').each(function() {

                                            total = parseFloat(total) + parseFloat(($(this).html().replace("$", "")));



                                        })


                                    })

                                    document.getElementById('totallabel').innerHTML = "$" + total;

                                    break;

                            }
                        });


                })


                $(document).on("click", "#tablacartelera tbody tr", function() {

                    var idPelicula;
                    Idcartelera =
                        idPelicula = $(this).find('td:nth-child(2)').html();
                    nombrepelicula = $(this).find('td:nth-child(3)').html();
                    sala = $(this).find('td:nth-child(5)').html();
                    horaInicio = $(this).find('td:nth-child(7)').html();


                    $.post('ControllerPrecios', {
                        idPelicula
                    }, function(response) {

                        let datos = JSON.parse(response);
                        document.getElementById("childs").innerHTML = " Precio niños no aplica";
                        document.getElementById("child").disabled = true;
                        document.getElementById("adultos").checked = true;
                        for (let item of datos) {

                            if (item.tipo == 0) {

                                document.getElementById("adulto").innerHTML = "$" + item.precios + " Precio adulto";
                                document.getElementById("adultos").value = item.idprecio;
                                precioadulto = item.precios;

                            } else if (item.tipo == 1) {
                                document.getElementById("child").disabled = false;
                                document.getElementById("childs").innerHTML = "$" + item.precios + " Precio niños";
                                document.getElementById("child").value = item.idprecio;
                                precionino = item.precios;

                            } else if (item.tipo == 2) {
                                document.getElementById("adultom").innerHTML = "$" + item.precios + " Precio adultos mayores";
                                document.getElementById("adultosm").value = item.idprecio;
                                precioadultoma = item.precios;

                            } else if (item.tipo == 3) {
                                document.getElementById("estudiantes").innerHTML = "$" + item.precios + " Precio estudiantes";
                                document.getElementById("estu").value = item.idprecio;
                                precioestudiante = item.precios;
                            }

                        }

                    })


                    Idcartelera = $(this).find('td:first-child').html();
                    $(document).ready(function() {


                        $.post('ControllerAsientos', {
                            Idcartelera
                        }, function(datos) {
                            try {
                                var combo = document.getElementById('Asientos');

                                $('#Asientos').empty();
                                datos.forEach(function(item) {

                                    combo.innerHTML += `
            <option value="${item.Id_Asiento}">${item.Numero} </option>
                
            `
                                })

                            } catch (e) {
                                // TODO: handle exception
                            }

                        });
                    })
                });

                $(document).on("click", "#tablaproductos tbody tr", function() {
                    var idproducto, precioproducto, nombreproducto;
                    var tabla = document.getElementById('tabladetalles');
                    idproducto = $(this).find('td:first-child').html();
                    nombreproducto = $(this).find('td:nth-child(2)').html();
                    precioproducto = $(this).find('td:nth-child(3)').html();

                    swal("Alerta", "¿Desea agregar " + nombreproducto + " ?", "info", {
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

                                    tabla.innerHTML += `
    <td> ${nombreproducto}   </td>
    <td> $ ${precioproducto}</td>
    <td style="display:none;"> 1 </td>
    <td style="display:none;"> 0 </td>
    <td style="display:none;"> 0 </td>
    <td style="display:none;"> ${idproducto} </td>
    <td style="display:none;"> 0 </td>
    
            `


                                    total = 0;

                                    $('#tabladetalles tr').each(function() {

                                        $(this).find('td:nth-child(2)').each(function() {

                                            total = parseFloat(total) + parseFloat(($(this).html().replace("$", "")));



                                        })


                                    })

                                    document.getElementById('totallabel').innerHTML = "$" + total;
                                    break;
                            }
                        })






                })



                function cargarCarteleras() {
                    var fecha = document.getElementById('fecha').value;


                    $(document).ready(function() {

                        $.post('ControllerCarteleras', {

                            fecha

                        }, function(response) {
                            //Recibir informacion

                            let datos = JSON.parse(response);

                            var tabla = document.getElementById('tablacartelera');
                            $('#tablacartelera tbody tr').remove();
                            for (let item of datos) {

                                var Tipo = item.Tipo;

                                if (Tipo == 0) {
                                    Tipo = "2D";
                                } else {
                                    Tipo = "3D";
                                }
                                tabla.innerHTML += `
			 <tr>
						<td style="display:none;"> ${item.Idcartelera} </td>
                        <td style="display:none;"> ${item.idPelicula} </td>
						<td> ${item.Nombre} </td>
						<td style="display:none;"> ${item.Id_Sala} </td>
						<td> ${item.numero_sala} </td>
					
					
						<td> ${Tipo} </td>
                        <td > ${item.horaInicio}</td>
					
					    
			</tr>
		`
                            }

                        });
                    });
                }

                $(document).ready(function() {


                        $.post('ControllerClientes', function(datos) {
                            try {
                                var combo = document.getElementById('clientes');

                                datos.forEach(function(item) {

                                    combo.innerHTML += `
                <option value="${item.idRol}">${item.Nombres} </option>
                    
                `

                                })

                            } catch (e) {
                                // TODO: handle exception
                            }

                        });
                    })
                    //validar solo numeros y decimales
                $('#efectivo').on(
                    'input',
                    function() {
                        this.value = this.value.replace('-', '');
                    });

                $('#facturar').on('click', function() {
                    var cajero = "<%=cajero%>";
                    var efectivo = parseFloat($('#efectivo').val());
                    var cliente = $('#clientes').val();
                    if (efectivo >= total) {
                        $(document).ready(function() {

                            $.get('controllerfacturas', {
                                cajero,
                                cliente,
                                total


                            });
                        })




                        $('#tabladetalles tbody tr').each(function() {
                            var costo = parseFloat(($(this).find('td:nth-child(2)').html().replace("$", "")));
                            var identificador = $(this).find('td:nth-child(3)').html();
                            var asiento = $(this).find('td:nth-child(4)').html();
                            var idprecio = $(this).find('td:nth-child(5)').html();
                            var idproducto = $(this).find('td:nth-child(6)').html();
                            var Idcartelera = $(this).find('td:nth-child(7)').html();
                            $(document).ready(function() {



                                $.post('controllerfacturas', {
                                    costo,
                                    identificador,
                                    asiento,
                                    idprecio,
                                    idproducto,
                                    Idcartelera
                                });

                            })

                            alert(identificador + "   " + asiento + "  " + idprecio + "   " + idproducto + "  " + Idcartelera);
                        });


                        // alert("Su cambio es " + parseFloat(efectivo - total));
                    } else {


                    }


                });

                window.onload = cargarCarteleras;
            </script>

    </body>

    </html>