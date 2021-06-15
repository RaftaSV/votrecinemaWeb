<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="uft-8">
        <title>VOTRECINEMA</title>
        <link rel="shortcut icon" type="Logo/png" href="CCS/Logo.png">
        <!--- font awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
        <!-- CSS -->
        <LINK REL=StyleSheet HREF="CCS/principal.css" TYPE="text/css" />
        <!--- ajax -->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <!--sweetalert -->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>

    <body>
        <% HttpSession sesion = (HttpSession) request.getSession();
	 String usu = String.valueOf(sesion.getAttribute("usu")); 
	   String id = String.valueOf(sesion.getAttribute("id"));
	   String tipo = String.valueOf(sesion.getAttribute("tipo"));
        if (id.equals(null) || id.equals("null") || id.equals("Error")) {
               response.sendRedirect("Index.jsp");
           }
        %>
            <div class="wrapper">
                <nav id="sidebar">
                    <div class="sidebar-header" id="menu">
                    </div>
                    <button type="button" class="button" onclick="peliculas()" id="pelicula">PELICULAS</button>

                    <button type="button" class="button" onclick="productos()" id="producto">PRODUCTOS</button>

                    <button type="button" class=" button" onclick="proveedores()" id="proveedor">PROVEEDORES</button>

                    <button type="button" class=" button" onclick="personas()" id="persona">PERSONAS</button>

                    <button type="button" class=" button" onclick="Roles()" id="rol">ROLES</button>

                    <button type="button" class=" button" onclick="salas()" id="sala">SALAS</button>

                    <button type="button" class="button" onclick="Horerios()" id="horario">HORARIOS</button>

                    <button type="button" class=" button" onclick="Carteleras()" id="cartelera">CARTELERAS</button>

                    <button type="button" class="button" onclick="Facturar()" id="factura">FACTURAS</button>
                </nav>

                <!-- CONTENEDOR -->

                <div id="content">
                    <div class="container-fluid" id="boton">

                        <button type="button" id="sidebarCollapse" class="navbar-btn">
					<span></span> <span></span> <span></span>
				</button>

                        <label id="usuario"> <%=usu%> </label>
                        <form action="controllerCerrar" method="post">
                            <button class="btn btn-danger " name="cerrar" value="index" id="cerrar"><span><i class="fas fa-sign-out-alt"></i></span></button>
                        </form>
                    </div>

                    <div id="contenedor"></div>

                </div>

            </div>



            <script type="text/javascript">
                $(document).ready(function() {
                    $('#sidebarCollapse').on('click', function() {
                        $('#sidebar').toggleClass('active');
                        $(this).toggleClass('active');
                    });
                });
                var iframe = document.createElement('iframe');

                function proveedores() {
                    var link = "http://localhost:8080/Votre/Proveedores.jsp"
                    iframe.remove();
                    iframe.frameBorder = 0;
                    iframe.width = "100%";
                    iframe.height = "98%";
                    iframe.setAttribute("src", link);
                    document.getElementById("contenedor").appendChild(iframe);

                }

                function Facturar() {
                    var link = "http://localhost:8080/Votre/Facturar.jsp"
                    iframe.remove();
                    iframe.frameBorder = 0;
                    iframe.width = "100%";
                    iframe.height = "98%";
                    iframe.setAttribute("src", link);
                    document.getElementById("contenedor").appendChild(iframe);

                }

                function peliculas() {
                    var link = "http://localhost:8080/Votre/Peliculas.jsp"
                    iframe.remove();
                    iframe.frameBorder = 0;
                    iframe.width = "100%";
                    iframe.height = "98%";
                    iframe.setAttribute("src", link);
                    document.getElementById("contenedor").appendChild(iframe);

                }

                function productos() {
                    var link = "http://localhost:8080/Votre/Productos.jsp"
                    iframe.remove();
                    iframe.frameBorder = 0;
                    iframe.width = "100%";
                    iframe.height = "98%";
                    iframe.setAttribute("src", link);
                    document.getElementById("contenedor").appendChild(iframe);
                }

                function salas() {
                    var link = "http://localhost:8080/Votre/Salas.jsp"
                    iframe.remove();
                    iframe.frameBorder = 0;
                    iframe.width = "100%";
                    iframe.height = "98%";

                    iframe.setAttribute("src", link);
                    document.getElementById("contenedor").appendChild(iframe);

                }

                function personas() {
                    var link = "http://localhost:8080/Votre/personas.jsp"
                    iframe.remove();
                    iframe.frameBorder = 0;
                    iframe.width = "100%";
                    iframe.height = "98%";

                    iframe.setAttribute("src", link);
                    document.getElementById("contenedor").appendChild(iframe);

                }

                function Horerios() {

                    var link = "http://localhost:8080/Votre/Horarios.jsp"
                    iframe.remove();
                    iframe.frameBorder = 0;
                    iframe.width = "100%";
                    iframe.height = "98%";

                    iframe.setAttribute("src", link);
                    document.getElementById("contenedor").appendChild(iframe);

                }

                function Roles() {

                    var link = "http://localhost:8080/Votre/rol.jsp"
                    iframe.remove();
                    iframe.frameBorder = 0;
                    iframe.width = "100%";
                    iframe.height = "98%";

                    iframe.setAttribute("src", link);
                    document.getElementById("contenedor").appendChild(iframe);

                }

                function Carteleras() {
                    var link = "http://localhost:8080/Votre/Carteleras.jsp"
                    iframe.remove();
                    iframe.frameBorder = 0;
                    iframe.width = "100%";
                    iframe.height = "98%";

                    iframe.setAttribute("src", link);
                    document.getElementById("contenedor").appendChild(iframe);

                }



                var tipo = "<%=tipo%>";


                if (tipo == 0) {


                } else if (tipo == 1) {
                    $('#producto').hide();
                    $('#proveedor').hide();
                    $('#persona').hide();
                    $('#rol').hide();
                    $('#sala').hide();
                    $('#horario').hide();

                } else if (tipo = 2) {

                    $('#producto').hide();
                    $('#proveedor').hide();
                    $('#persona').hide();
                    $('#rol').hide();
                    $('#sala').hide();
                    $('#horario').hide();
                    $('#factura').hide();



                }
                if (performance.navigation.type == 2) {

                    location.reload(true);

                }
            </script>


    </body>

    </html>