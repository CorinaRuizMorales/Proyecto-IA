/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.Registro;
import java.util.List;

/**
 *
 * @author herso
 */
public interface CRUD {
    
    public List listar();
    
    public boolean index(Registro reg);
    
    public Registro list(int id);
    public boolean add(Registro reg);
    public boolean edit(Registro reg);
    public boolean eliminar(int id);
    
}
