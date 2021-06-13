<!DOCTYPE html>
<html>
<link rel="shortcut icon" type="Logo/png" href="CCS/Logo.png">
<LINK REL=StyleSheet HREF="CCS/estilo.css" TYPE="text/css" />

<head>
    <meta charset="ISO-8859-1">
    <title>HOME</title>
</head>

<body>

        <form action="ControllerLogin" method="post">

            <img src="CCS/user.png">
            <div class="inset">

                <label>USUARIO</label>
                <input type="text" name="user" id="email">
                <br>
                <br>
                <label>PASSWORD</label>
                <input type="password" name="pass" id="password">


            </div>
            <center>
			 <input class=" " type="submit" name="go" id="go" value="ACCEDER">
			 <font color="white"><h3 font="white">¿Eres Nuevo? Procede a <a onclick="abrir()" style="cursor:pointer;">Registrarte</a></h3></font> 
            </center>


        </form>

<script type="text/javascript">
function abrir() {

    window.open('http://localhost:8080/Votre/NuevoUser.jsp', 'Registro', 'menubar=no,status=no,toolbar=no');
}</script>

</body>

</html>