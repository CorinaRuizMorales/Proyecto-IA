<%-- 
    Document   : add
    Created on : 14/06/2021, 02:01:05 PM
    Author     : herso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <h1>Registrate :D!</h1>
        <form action="Controlador">
            
            <!-- Nombre -->
            <br>
            <label for="Nom">Usuario:</label>
            <input type="text" name="txtUsuario">
            <br>
            <!-- Correo -->
            <br>
            <label for="Corr">Correo:</label>
  	    <input type="text" name="txtCorreo">
            <br>
            <!-- Contraseña -->
            <br>
            <label for="Pass">Contraseña:</label>
  	    <input type="text" name="txtPassword">
            <br>
            <br>
            <input type="submit" name="accion" value="Agregar">
            
        </form>
    </body>
</html>
