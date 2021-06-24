<%-- 
    Document   : Registrate
    Created on : 15/06/2021, 12:33:47 PM
    Author     : User
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="css/login.css">
       <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css" rel="stylesheet" />
   
        <title>JSP Page</title>
    </head>
    <body background="mm.jpg">
         <br>
    <br>
    <br>
    <br>
    <div class="container">
        <!-- Button trigger modal -->
  <center><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
      Recupera Contraseña </button></center>
      
      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header bg-primary">
              <h5 class="modal-title" id="exampleModalLabel">Recupera Contraseña</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                 <!-- RECUPERAR -->
         <form id="forgot-password" class="auth-heigth" action="SERVEMAIL" method="POST">
                    <div class="form-row">
                       
                          <div class="form-group col-md-12">
                            <h5>RECUPERAR PASSWORD</h5>
                            <input type="email" name="email" class="form-control" placeholder="Ingrese su correo">
                        </div>
                              </div> 
                               
                           <input type="submit" name="btnRecuperar" value=" RECUPERAR" class="btn btn-primary btn-block ingresar">

        </form>
                 
            <div class="modal-footer  d-flex justify-content-center">
                <a href="index.jsp">Salir</a>
              
        </div>
            </div>
          </div>
        </div>
    </div>
</div>
</div>
      <br><br><br>
   <!-- Button trigger modal -->
<center><button  type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
    Registrate
   </button></center>
   
   <!-- Modal -->
   <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
     <div class="modal-dialog modal-dialog-centered" role="document">
       <div class="modal-content">
         <div class="modal-header  btn-primary">
           <h5 class="modal-title" id="exampleModalLongTitle modal-title w-100 font-weight-bold text-center">Registrate</h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
               <!-- REGISTRO---------------------------------------------------------->
           
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
                             <div class="modal-footer justify-content-center">
                            <%--<button type="submit" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>--%>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <a href="index.jsp">Salir</a>
        </div>
                    </form>
                       

                </div>
            </div>
        </div>
        <%
            if (request.getParameter("enviar") != null) {
                String Usuario = request.getParameter("Usuario");
                String Correo = request.getParameter("Correo");
                String Password = request.getParameter("Password");
                
                String Driver ="com.mysql.cj.jdbc.Driver";
                String Url="jdbc:mysql://localhost:3306/login_db?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
                String Use ="root";
                String Pass =""; 
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(Url,Use,Pass);
                con=DriverManager.getConnection(Url,Use,Pass);

               
                Statement st = con.createStatement();
                ResultSet rs;
                
                rs = st.executeQuery("select Usuario,Correo from registro where Usuario='"+Usuario+"' and Correo='"+Correo+"'");
                
                
                if (rs.next()) {
                 
                 response.sendRedirect("index.jsp");
                    
                } else{
                    try {

                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection(Url,Use,Pass);
                        st=con.createStatement();
                        st.executeUpdate("insert into registro (Usuario,Correo,Password) values('"+Usuario+"','"+Correo+"','"+Password+"');");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                        } catch (Exception e) {
                        out.print(e);
                        }
                }
            }
        %>
      <!-- ------------------------------------------------------------------------------->
</div>
</div>
</div>
<br> <br> <br>
        
       
        
        
        
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
    </body>
</html>
