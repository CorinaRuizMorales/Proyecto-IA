
package Config;

import java.sql.*;


public class Conexion {
    
   //GLASSFISH  
    private String Driver ="com.mysql.jdbc.Driver";
    private String Url="jdbc:mysql://localhost:3306/login_db?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
   //
    
    //Apache TOMcat
    //private String Driver ="com.mysql.jdbc.Driver";
    //private String Url="jdbc:mysql://127.0.0.1:3306/login_db";
    
    
    
    private String Usuario ="root";
    private String Password ="";    
    
    Connection con;
    
    public Conexion(){
        try{
            
            Class.forName(Driver);
            con=DriverManager.getConnection(Url,Usuario,Password);   
            
        }catch (Exception e){           
            
            System.err.println("Error" + e);
            
            } 
    }
    
    public Connection getConnection(){
        return con;
    } 
}
    

