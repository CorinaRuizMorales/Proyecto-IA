   <%@ page import ="java.sql.*" %>
   <html>
       
   <body>
       
       
       
       
       
<%
            
    String Driver ="com.mysql.cj.jdbc.Driver";
    String Url="jdbc:mysql://localhost:3306/login_db?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    String Usuario ="root";
    String Password =""; 

    
    
    
    
    String user = request.getParameter("txtUsuario");    
    String pass = request.getParameter("txtPassword");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(Url,Usuario,Password);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select Usuario,Password from registro where Usuario='"+user+"' and Password='"+pass+"'");
    if (rs.next()) {
        session.setAttribute("user", user);
         response.sendRedirect("Bienvenida.jsp");
    } else {
       response.sendRedirect("index.jsp");
    }
%>
    </body>
</html>