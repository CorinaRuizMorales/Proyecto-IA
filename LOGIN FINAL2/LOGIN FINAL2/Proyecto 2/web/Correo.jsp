<%-- 
    Document   : Correo.jsp
    Created on : 15/06/2021, 11:24:05 AM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h3>
            <%=request.getAttribute("Message")%>
        </h3>
    </center>
    </body>
</html>
