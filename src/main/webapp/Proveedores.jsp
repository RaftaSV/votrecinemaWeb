<!DOCTYPE html>
<html>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
        
      //Cuando la página esté cargada completamente
    	  $(document).ready(function(){
    	    //Cada 1 segundos (1000 milisegundos) se ejecutará la función refrescar y cargara la imagen insertada 
    	    setTimeout(cargardatos, 1000);
    	  });

        function cargardatos() {

            $(document).ready(function() {


                $.post('controllerProveedores', function(datos) {
                    try {
                        var tabla = document.getElementById('tablaDatos');
                        $('#tablaDatos tbody tr').remove();
                        datos.forEach(function(item) {
                            tabla.innerHTML += `
								 <tr onclick="seleccionar()" >
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
            Telefono = $(this).find('td:nth-child(3)').html();
            Direccion = $(this).find('td:nth-child(4)').html();

                document.getElementById('idpro').value = idProveedor;
                document.getElementById('nombre').value = Nombre;
                document.getElementById('telefono').value = Telefono;
                document.getElementById('direccion').value = Direccion;
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
            if(this.value.length<=9) {return true;}
        }
      
        function Guardar() {

            $(document).ready(function() {
                var id, nombre, direccion, telefono, Eliminar;
                nombre = $("#nombre").val();
                telefono = $("#telefono").val();
                direccion = $("#direccion").val();
                id = $("#idpro").val();
                Eliminar = "no";


                if (nombre == "") {
                    alert("Debe rellenar un nombre");
                    $("#nombre").focus();

                } else if (telefono == "") {
                    alert("Ingrese un numero de telefono");
                    $("#telefono").focus();

                } else if (direccion == "") {
                    alert("Por favor, ingrese una direccion");
                    $("#direccion").focus();
                } else {
                    var bool = confirm("Desea guardar el proveedor " + nombre + " ?");
                    if (bool) {
                        document.getElementById('nombre').value = "#nombre";
                        document.getElementById('telefono').value = "#telefono";
                        document.getElementById('direccion').value = "#direccion";
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
                        window.location.reload();
                    }
                }
            })

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
                <br> <input type="text" id="telefono" onkeypress="return solonumeros(event)"> <br> 
                <label>Direccion</label>
                <br> <input type="text" id="direccion"> <br> <br>

                <button onclick="Guardar()">Guardar</button>
            </center>
        </div>
    </div>

</body>

</html>