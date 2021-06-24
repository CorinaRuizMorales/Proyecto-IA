<%-- 
    Document   : Index
    Created on : 14/06/2021, 01:57:05 PM
    Author     : herso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/login.css">
        <title>JSP Page</title>
    </head>
    <body background="mm.jpg" position="absolute">
        
      <div id="cont">
        
            <div id="login">
                <div class="form-group text-center pt-3">
        <h1>Inicia sesion!</h1>
       </div>
        <form  method="post" action="ValidarUsuario.jsp">
        <!-- Nombre -->
        <br>
        <div class="form-group mx-sm-2 pt-3"> 
        <label for="Nom">Nombre:</label>
         </div>
        <input type="text" name="txtUsuario">
        <br>
            <!-- Contraseña -->
      <div class="form-group"> 
        <label for="Corr">Contraseña:</label>
        
  	<input type="text" name="txtPassword">
         </div>
        <br>
        <input type="submit" name="accion" value="ingresar">
        </form> 
       
       
        <br>
  
            
              <div class="pie-form">
                    <a href="Registrate.jsp">¿Recupera Contraseña? ¿No tienes Cuenta? Registrate</a>
                    <hr>       
               </div>
           </div>
           
            </div>
        
             <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
             <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        
    </body>
</html>
