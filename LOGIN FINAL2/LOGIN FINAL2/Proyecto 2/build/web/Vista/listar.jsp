<%-- 
    Document   : listar
    Created on : 14/06/2021, 02:01:21 PM
    Author     : herso
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Registro"%>
<%@page import="ModeloDAO.RegistroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1> Registro</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Usuario</th>
                    <th>Correo</th>
                    <th>Contraseña</th>
                </tr>
            </thead>
            <%
                RegistroDAO dao=new RegistroDAO();
                List<Registro>list=dao.listar();
                Iterator<Registro>iter=list.iterator();
                Registro reg=null;
                while(iter.hasNext()){
                    reg=iter.next();
            %>
            <tbody>
                <tr>
                    <td><%= reg.getId()%></td>
                    <td><%= reg.getUser()%></td>
                    <td><%= reg.getCorr()%></td>
                    <td><%= reg.getPass()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <br>
        <form> <input type = "button" value = "Regresar" onclick = "history.back ()"> </form>
    </body>
</html>
