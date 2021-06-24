

package Controlador;

import Modelo.Registro;
import ModeloDAO.RegistroDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {
    
    String listar="Vista/listar.jsp";
    String add="Vista/add.jsp";
    String edit="Vista/edit.jsp"; 
    String index="index.jsp";
    String inicio="Inicio.jsp";
    
    Registro r=new Registro();
    RegistroDAO dao=new RegistroDAO();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String acceso="";
        String action=request.getParameter("accion");//nombre del boton resivira la accioin del boton se encuentra en index
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;   
        }else if(action.equalsIgnoreCase("Agregar")){
            //se agregan los valores de las cajas de textos del add.jsp
            String use=request.getParameter("txtUsuario");
            String corr=request.getParameter("txtCorreo");
            String Pas=request.getParameter("txtPassword");
            r.setUser(use);
            r.setCorr(corr);
            r.setPass(Pas);
            dao.add(r);
            acceso=index;            
        }else if(action.equalsIgnoreCase("ingresar")){
            String use=request.getParameter("txtUsuario");
            String Pas=request.getParameter("txtPassword");
            r.setUser(use);
            r.setPass(Pas);
            dao.index(r);
        
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
