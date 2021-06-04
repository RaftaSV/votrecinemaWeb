<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <head>
        <meta charset="ISO-8859-1">
        <title>VOTRECINEMA</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <LINK REL=StyleSheet HREF="CCS/Diseno.css" TYPE="text/css" />
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
    </head>

    <body>

        <h1 class="text-center display-1" style="font-family: Brush Script MT, arial">
            <font COLOR="black"> PRODUCTOS</font>
        </h1>

        <script type="text/javascript">
            function MOSTRARCRUD() {
                var CRUD = document.getElementById("PANELCRUD"),
                    tabladiv = document.getElementById('tabladiv');
                document.getElementById('id').value = "";
                document.getElementById('Producto').value = "";
                document.getElementById('Precio').value = "";
                document.getElementById('Cantidad').value = "";
                if (CRUD.style.display === "none") {
                    CRUD.style.display = "inline-block";
                    tabladiv.style.width = "75%";



                } else {
                    CRUD.style.display = "none";
                    tabladiv.style.width = "98%";



                }

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
				    <td style="display:none;" >${item.idProveedor}</td>
				    <td>${item.Nombre} </td>
				    <td>
				    <a class="btn btn-danger" href="controllerProductos?id=${item.idProducto}&Eliminar=btne"> ELIMINAR </a> 
				    </td>
					</tr>
				`


                    }


                });
            });






            $(document).on("click", "#tablaproductos tr", function() {


                var idProducto, producto, precio, cantidad, proveedor;


                idProducto = $(this).find('td:first-child').html();
                producto = $(this).find('td:nth-child(2)').html();
                precio = $(this).find('td:nth-child(3)').html();
                cantidad = $(this).find('td:nth-child(4)').html();
                proveedor = $(this).find('td:nth-child(5)').html();

                if (idProducto > 0) {
                    var select = document.getElementById('combo');
                    for (var i = 0; i < select.length; i++) {

                        if (select.options[i].value == proveedor) {
                            // seleccionamos el valor que coincide

                            select.selectedIndex = i;
                            document.getElementById('id').value = idProducto;
                            document.getElementById('Producto').value = producto;
                            document.getElementById('Precio').value = precio;
                            document.getElementById('Cantidad').value = cantidad;
                            break
                        } else {

                            //si ninguno coincide selecionamos el valor que esta en la posicion 0
                            select.selectedIndex = 0;

                        }
                    }

                }
            });



            function cargarcombo() {

                $(document).ready(function() {


                    $.post('controllerProveedores', function(datos) {
                        try {
                            var combo = document.getElementById('combo');

                            datos.forEach(function(item) {
                                combo.innerHTML += `
									<option value="${item.idProveedor}">${item.Nombre} </option>
										
									`

                            })

                        } catch (e) {
                            // TODO: handle exception
                        }

                    });
                })
            }

            function Guardar() {

                $(document).ready(function() {
                    var id, producto, precio, cantidad, idpro;
                    id = $("#id").val();
                    producto = $("#Producto").val();
                    precio = $("#Precio").val();
                    cantidad = $("#Cantidad").val();
                    idpro = $("#combo").val();
                    Eliminar = "no";


                    if (producto == "") {
                        alert("Es necesario llenar el campo de producto");
                        $("#Producto").focus();

                    } else if (precio == "") {
                        alert("Es necesario agregar precio");
                        $("#Precio").focus();

                    } else if (cantidad == "") {
                        alert("Es necesario agregar la cantidad");
                        $("#Cantidad").focus();

                    } else {

                        var bool = confirm("Desea guardar el producto " + producto + " ?");
                        if (bool) {

                            document.getElementById('id').value = "id";
                            document.getElementById('Producto').value = "Producto";
                            document.getElementById('Precio').value = "Precio";
                            document.getElementById('Cantidad').value = "Cantidad";


                            $.get('controllerProductos', {

                                id,
                                producto,
                                precio,
                                cantidad,
                                idpro,
                                Eliminar


                            });

                            document.getElementById('id').value = "";
                            document.getElementById('Producto').value = "";
                            document.getElementById('Precio').value = "";
                            document.getElementById('Cantidad').value = "";
                            window.location.reload();



                        }
                    }

                })

            }

            window.onload = cargarcombo();
        </script>






        <button id="EDITAR" onclick="MOSTRARCRUD()" class="far fa-edit fa-2x"></button>
        <div>

            <div class="tabla" id="tabladiv">
                <table id="tablaproductos" class="table table-sm table-dark">
                    <thead>
                        <th style="display: none;">IDPRODUCTO</th>
                        <th>PRODUCTO</th>
                        <th>PRECIO</th>
                        <th>CANTIDAD</th>
                        <th style="display: none;">IDPROVE</th>
                        <th>PROVEEDOR</th>
                        <th>ACCIONES</th>
                    </thead>
                </table>
            </div>


            <div class="crudProductos" id="PANELCRUD" style="display: none;">
                <center>
                    <input type="hidden" id="id"> <br> <label>Producto</label>
                    <br> <input type="text" id="Producto"> <br> <label>Precio</label>
                    <br> <input type="text" id="Precio"> <br> <label>Cantidad</label>
                    <br> <input type="text" id="Cantidad"> <br> <label>Proveerdor</label>
                    <br> <select class="" id="combo" required>
				</select> <br> <br>
                    <button onclick="Guardar()">Guardar</button>
                </center>
            </div>
        </div>


    </body>

    </html>