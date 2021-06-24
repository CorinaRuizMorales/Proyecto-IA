/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Registro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class RegistroDAO implements CRUD{

    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Registro r=new Registro();
    
    @Override
    public List listar() {
         ArrayList<Registro>list=new ArrayList<>();
        String sql="select * from registro";
        
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Registro reg=new Registro();
                reg.setId(rs.getInt("Id"));
                reg.setUser(rs.getString("Usuario"));
                reg.setCorr(rs.getString("Correo"));
                reg.setPass(rs.getString("Password"));
                list.add(reg);
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
     public String consulta(String user,String pass){
       
      String us="";
        String SQL=" Select Password from registro where Correo='"+user+"'" ;
        
         try{
            con=cn.getConnection();
            ps=con.prepareStatement(SQL);
            rs=ps.executeQuery();
            while(rs.next()){
                us=rs.getString(1);
            }
            
        } catch (SQLException e) {
            
        }
      
            return us;
            
        }
    

    @Override
    public boolean index(Registro reg) {
        String estado = "";
        String sql="SELECT Usuario,Password FROM registro WHERE Usuario='"+reg.getUser()+"' and Password='"+reg.getPass()+"'";
        
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            if (rs.next()) {

                estado = "true";
                System.out.print("Se logro");

            }
            
        } catch (SQLException e) {
            
        }
        return false;
        
     
    }

    @Override
    public Registro list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Registro reg) {
        return false;
        
    }

    @Override
    public boolean edit(Registro reg) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
