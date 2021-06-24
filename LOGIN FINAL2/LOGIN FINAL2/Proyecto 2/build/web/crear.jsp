<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>Registro</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">

                    <form>
                    <form action="crear.jsp" method="post">
                        <div class="form-group">
                            <label for="nombre">Usuario</label>
                            <%-- <input type="text" class="form-control" id="Usuario" name="Usuario" placeholder="Usuario"> --%>
                            <input type="text" class="form-control" id="Usuario" name="Usuario" placeholder="Usuario" required="required">
                        </div>
                        <div class="form-group">
                            <label for="direccion">Correo</label>
                            <%-- <input type="text" class="form-control" id="Correo" name="Correo" placeholder="Correo"> --%>
                            <input type="text" class="form-control" id="Correo" name="Correo" placeholder="Correo" required="required">
                        </div>
                        <div class="form-group">
                            <label for="telefono">Contraseña</label>
                            <%--<input type="text" class="form-control" id="Password" name="Password" placeholder="Password">--%>
                            <input type="text" class="form-control" id="Password" name="Password" placeholder="Password" required="required">
                        </div>
                            <%--<button type="submit" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>--%>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                        
                    </form>
                        <a href="index.jsp"><input type="button" value="Regresar"></a>

                </div>
            </div>
        </div>
        <%
            if (request.getParameter("enviar") != null) {
                String Usuario = request.getParameter("Usuario");
                String Correo = request.getParameter("Correo");
                String Password = request.getParameter("Password");
                try {
                    Connection con=null;
                    Statement st=null;
                    
                    String Driver ="com.mysql.cj.jdbc.Driver";
                    String Url="jdbc:mysql://localhost:3306/login_db?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
                    String Use ="root";
                    String Pass =""; 
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection(Url,Use,Pass);
                    st=con.createStatement();
                    st.executeUpdate("insert into registro (Usuario,Correo,Password) values('"+Usuario+"','"+Correo+"','"+Password+"');");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                    
                    
                }
                
            }
        %>
    </body>
</html>