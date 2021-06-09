<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<LINK REL=StyleSheet HREF="CCS/NuevoUser.css" TYPE="text/css"/>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRAR</title>
</head>
<body>
<script type="text/javascript">
$(function() {
	$(".btn").click(function() {
		$(".form-signin").toggleClass("form-signin-left");
    $(".form-signup").toggleClass("form-signup-left");
    $(".frame").toggleClass("frame-long");
    $(".signup-inactive").toggleClass("signup-active");
    $(".signin-active").toggleClass("signin-inactive");
    $(".forgot").toggleClass("forgot-left");   
    $(this).removeClass("idle").addClass("active");
	});
});

$(function() {
	$(".btn-signup").click(function() {
  $(".nav").toggleClass("nav-up");
  $(".form-signup-left").toggleClass("form-signup-down");
  $(".success").toggleClass("success-left"); 
  $(".frame").toggleClass("frame-short");
	});
});

$(function() {
	$(".btn-signin").click(function() {
  $(".btn-animate").toggleClass("btn-animate-grow");
  $(".welcome").toggleClass("welcome-left");
  $(".cover-photo").toggleClass("cover-photo-down");
  $(".frame").toggleClass("frame-short");
  $(".profile-photo").toggleClass("profile-photo-down");
  $(".btn-goback").toggleClass("btn-goback-up");
  $(".forgot").toggleClass("forgot-fade");
	});
});

</script>
<div class="container">
  <div class="frame">
    <div class="nav">
      <ul class"links">
        <li class="signin-active"><a class="btn">Registrarse</a></li>
      </ul>
    </div>
    <div ng-app ng-init="checked = false">
		<form class="form-signin" action="" method="post" name="form">
	      <label for="fullname">Nombre</label>
          <input class="form-styling" type="text" name="fullname" placeholder=""/>
          <label for="username">Usuario</label>
          <input class="form-styling" type="text" name="username" placeholder=""/>
          <label for="password">Clave</label>
          <input class="form-styling" type="text" name="password" placeholder=""/>
          <div class="btn-animate">
            <a class="btn-signin">Registrarse</a>
          </div>
		</form>
	
      <div>
        <div class="cover-photo"></div>
        <div class="profile-photo"></div>
     
        <h1 class="welcome">BIENVENIDO! :)</h1>
        <a class="btn-goback" value="Refresh" onClick="history.go()">REGRESAR</a>
      </div>
  </div>
</div>
</div>
</body>
</html>