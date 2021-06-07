<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>



<LINK REL=StyleSheet HREF="CCS/principal.css" TYPE="text/css" />
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">


<!-- jQuery CDN - Slim version (=without AJAX) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>

<meta charset="uft-8">
<title>VOTRECINEMA</title>
</head>
<body>
	<% HttpSession sesion = (HttpSession) request.getSession();
	 String usu = String.valueOf(sesion.getAttribute("usu")); %>
	<div class="wrapper">
		<nav id="sidebar">
			<div class="sidebar-header" id="menu">
				
			</div>
			<button type="button" class="button"
			 onclick ="peliculas()">PELICULAS</button>
			<br>
			<button type="button" class="button"
				onclick="productos()">PRODUCTOS</button>
			<br>
			<button type="button" class=" button"
				onclick="proveedores()">PROVEEDORES</button>
			<br>
			<button type="button" class=" button" onclick="personas()">PERSONAS</button>
			<br>
			<button type="button" class=" button" onclick="Roles()">ROLES</button>
			<br>
			<button type="button" class=" button" onclick="salas()">SALAS</button>
			<br>
			<button type="button" class="button" onclick="Horerios()">HORARIOS</button>
			<br>
			<button type="button" class=" button" onclick="Carteleras()">CARTELERAS</button>
			<br>
			<button type="button" class="button" onclick="Facturar()">FACTURAS</button>
		</nav>

		<!-- CONTENEDOR -->
		
		<div id="content">
			<div class="container-fluid" id="boton">
            
				<button type="button" id="sidebarCollapse" class="navbar-btn">
					<span></span> <span></span> <span></span>
				</button>
				  	
				<label id="usuario"> <%=usu%> </label> 	
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
			var link = "http://localhost:5052/Votre/Proveedores.jsp"
			iframe.remove();
			iframe.frameBorder = 0;
			iframe.width = "100%";
			iframe.height = "98%";
			iframe.setAttribute("src", link);
			document.getElementById("contenedor").appendChild(iframe);

		}
		function Facturar() {
			var link = "http://localhost:5052/Votre/Facturar.jsp"
			iframe.remove();
			iframe.frameBorder = 0;
			iframe.width = "100%";
			iframe.height = "98%";
			iframe.setAttribute("src", link);
			document.getElementById("contenedor").appendChild(iframe);

		}
		function peliculas() {
			var link = "http://localhost:5052/Votre/Peliculas.jsp"
			iframe.remove();
			iframe.frameBorder = 0;
			iframe.width = "100%";
			iframe.height = "98%";
			iframe.setAttribute("src", link);
			document.getElementById("contenedor").appendChild(iframe);

		}
		function productos() {
			var link = "http://localhost:5052/Votre/Productos.jsp"
			iframe.remove();
			iframe.frameBorder = 0;
			iframe.width = "100%";
			iframe.height = "98%";
			iframe.setAttribute("src", link);
			document.getElementById("contenedor").appendChild(iframe);
		}
		function salas() {
			var link = "http://localhost:5052/Votre/Salas.jsp"
				iframe.remove();
			iframe.frameBorder = 0;
			iframe.width = "100%";
			iframe.height = "98%";

			iframe.setAttribute("src", link);
			document.getElementById("contenedor").appendChild(iframe);
			
		}
		function personas() {
			var link = "http://localhost:5052/Votre/personas.jsp"
				iframe.remove();
			iframe.frameBorder = 0;
			iframe.width = "100%";
			iframe.height = "98%";

			iframe.setAttribute("src", link);
			document.getElementById("contenedor").appendChild(iframe);
			
		}
	
	function Horerios() {
		var link = "http://localhost:5052/Votre/Horarios.jsp"
		iframe.remove();
		iframe.frameBorder = 0;
		iframe.width = "100%";
		iframe.height = "98%";

		iframe.setAttribute("src", link);
		document.getElementById("contenedor").appendChild(iframe);
		
	}
	
	function Roles() {
		var link = "http://localhost:5052/Votre/rol.jsp"
		iframe.remove();
		iframe.frameBorder = 0;
		iframe.width = "100%";
		iframe.height = "98%";

		iframe.setAttribute("src", link);
		document.getElementById("contenedor").appendChild(iframe);
		
	}
	function Carteleras() {
		var link = "http://localhost:5052/Votre/Carteleras.jsp"
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