<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<LINK REL=StyleSheet HREF="CCS/Diseno.css" TYPE="text/css" />
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<LINK REL=StyleSheet HREF="CCS/NuevoUser.css" TYPE="text/css" />
<html>
<head>
<meta charset="utf-8">
<title>REGISTRO</title>
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

</head>
<body>

<div class="form-register" align="center">
		
		<h4>Registro de nuevos usuarios</h4>
	      <label for="name">Nombres</label><br>
          <input class="controls" type="text" id="Nombres" name="Nombres" placeholder="Ingresa tu nombre"/><br>
          <label for="lastname">Apellidos</label><br>
          <input class="controls" type="text" id="Apellidos" name="Apellidos" placeholder="Ingresa tu apellido"/><br>
          <label for="dui">DUI</label><br>
          <input class="controls" type="number" id="Dui" name="Dui" placeholder="Ingresa tu DUI"/><br>
          <label for="user">Usuario</label><br>
          <input class="controls" type="text" id="user" name="user" placeholder="Ingresa un nombre de usuario"/><br>
          <label for="pass">Clave</label><br>
          <input class="controls " type="password" id="pass" name="pass" placeholder="Ingresa una password"/><br>
           <button class="Confirmar" type="button" id="Registrar" style="width:100%; height:15%" onclick="Guardar()">Registrar</button>
           <br>
          <p onclick="cerrar()" style="cursor:pointer;">Tengo una cuenta Iniciar Sesion</p>
		
	</div>
     

<script type="text/javascript">

$('#Dui').on(
        'input',
        function() {
            this.value = this.value.replace("-", '').replace(".", '');
        });
        
        function cerrar(){
        	close();
        }


function Guardar() {

    $(document).ready(function() {
        var Nombres, Apellidos, Dui, user, pass;
       
        Nombres = $("#Nombres").val();
        Apellidos = $("#Apellidos").val();
        Dui = $("#Dui").val();
        user = $("#user").val();
        pass = $("#pass").val();
		
        if(Nombres == ""){
        	swal({
            	title: "Alerta",
            	text: "El nombre no puede ir vacio",
            	icon: "warning"
            });
            $("#Nombres").focus();
        	
        }else if (Apellidos == ""){
        	swal({
            	title: "Alerta",
            	text: "El apellido no puede ir vacio",
            	icon: "warning"
            });
            $("#Apellidos").focus();
        } else if(Dui == ""){
        	swal({
            	title: "Alerta",
            	text: "El dui no puede ir vacio",
            	icon: "warning"
            });
            $("#Dui").focus();
        }else if (user == "") {
            swal({
            	title: "Alerta",
            	text: "El usuario no puede ir vacio",
            	icon: "warning"
            });
            $("#user").focus();


        } else if (pass == "") {
        	swal({
            	title: "Alerta",
            	text: "Es necesario agregar una contraseña",
            	icon: "warning",
            });
            $("#pass").focus();


        } else {
           swal("Alert", "¿Desea guardar al usuario " + Nombres + "?", "info", {
        	   buttons: {
        		   Guardar: {
        			   text: "Guardar"
        		   },
                   Cancelar: {
                	   text: "Cancelar"
                   },
        	   }
           })
           .then((value) =>{
        	   switch (value) {
        	   
        	   case "Cancelar":
        		   swal({
      				 title: "Cancelado",
      				 icon: "error"
      			 })
        	  
      			 break;
        		   
        	   case "Guardar":
        		   
                   $.post('controllerRegistro', {

                       Nombres,
                       Apellidos,
                       Dui,
                       user,
                       pass

                   });
                   document.getElementById('Nombres').value = ""
            	   document.getElementById('Apellidos').value = ""
            	   document.getElementById('Dui').value = ""
                   document.getElementById('user').value = "";
                   document.getElementById('pass').value = "";
                   swal("Alert", "¿Desea salir?", "info", {
                	   buttons: {
                		   Salir: {
                			   text: "Salir"
                		   },
                           Cancelar: {
                        	   text: "Cancelar"
                           },
                	   }
                   })
                   .then((value) =>{
                	   switch (value) {
                	   
                	   case "Cancelar":
                		 
              			 break;
                		   
                	   case "Salir":
                		   
                       close();
              			 break;
              			 
              			 
                	   }
                   })
      			 break;
      			 
      			 
        	   }
           })
        }//CierreElse
    })//CierreDocument

}//CierreGuardar

  
</script>

  
</body>
</html>