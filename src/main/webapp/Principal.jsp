<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" />
<LINK REL=StyleSheet HREF="CCS/principal.css" TYPE="text/css" />
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<!-- Our Custom CSS -->

<!-- jQuery CDN - Slim version (=without AJAX) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<!-- Popper.JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
	integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
	crossorigin="anonymous"></script>
<!-- Bootstrap JS -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
	integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
	crossorigin="anonymous"></script>


<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
	integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
	crossorigin="anonymous"></script>

<meta charset="uft-8">
<title>Insert title here</title>
</head>
<body>

	<div class="wrapper">
		<nav id="sidebar">
			<div class="sidebar-header" id="menu">
				<h3>VOTRECINEMA</h3>
			</div>
			<button type="button" class="button">PELICULAS</button>
			<br>
			<button type="button" class="button"
				onclick="productos()">PRODUCTOS</button>
			<br>
			<button type="button" class=" button"
				onclick="proveedores()">PROVEEDORES</button>
			<br>
			<button type="button" class=" button" onclick="personas()">PERSONAS</button>
			<br>
			<button type="button" class=" button">ROLES</button>
			<br>
			<button type="button" class=" button" onclick="salas()">SALAS</button>
			<br>
			<button type="button" class="button">HORARIOS</button>
			<br>
			<button type="button" class=" button">CARTELERAS</button>
			<br>
			<button type="button" class="button">FACTURAS</button>
		</nav>

		<!-- CONTENEDOR -->
		<div id="content">
			<div class="container-fluid" id="boton">

				<button type="button" id="sidebarCollapse" class="navbar-btn">
					<span></span> <span></span> <span></span>
				</button>
				<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
					type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation"></button>
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
	</script>
</body>
</html>