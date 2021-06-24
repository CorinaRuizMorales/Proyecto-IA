
package Modelo;


public class Registro {

    int id;
    String user;
    String corr;
    String pass;
    
    public Registro() {
    }

    public Registro(String user, String corr, String pass) {
        this.user = user;
        this.corr = corr;
        this.pass = pass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getCorr() {
        return corr;
    }

    public void setCorr(String corr) {
        this.corr = corr;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
}
