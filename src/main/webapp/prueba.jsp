<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<button onclick="myFunction()" id="NUEVO" >MOSTRAR</button>
<div id="myDIV" style="display:none;">

<h1>holllalallalllalalalla</h1>
</div>
<script type="text/javascript">
function MOSTRARCRUD() {
    var CRUD = document.getElementById("PANELCRUD"), mostrar = document.getElementById('mostrar');

    if (CRUD.style.display === "none") {
    	CRUD.style.display = "block";
        mostrar.innerHTML = 'OCULTAR'
    } else {
    	CRUD.style.display = "none";
        mostrar.innerHTML = 'MOSTRAR'
    }
}
</script>
<div>
 <h1>holalallalalal</h1>

</div>
</body>
</html>