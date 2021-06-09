
<!DOCTYPE html>
<html>
<!--Bootsrap 4 CDN-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
<!--Fontawesome CDN-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<LINK REL=StyleSheet HREF="CCS/Login.css" TYPE="text/css"/>
<head>
<meta charset="ISO-8859-1">
<title>LOGUIN</title>
</head>
<body >

<form action="ControllerLogin" method="post">

  	<div class="inset">
	<div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div><span>Votrecinema</span></div>
		</div>
		<br>
		<div class="login">
		<div class="input-group form-group">
					<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Usuario"><br>
					</div>
					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="Clave"><br>
					</div>
					<div align="center">
					<input type="button" value="INICIAR SESION">
					</div>
						
					<div align="center">
					<br> <a href="NuevoUser.jsp">¿Aún no eres Usuario? ¡Registrate!</a>
					</div>	
		</div>
    
 </div>
</form>

</body>
</html>