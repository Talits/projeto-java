/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.talita.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author Talita
 */
public class ConnectionFactory {
    public Connection getConnection() throws ClassNotFoundException, SQLException {
        
        String url ="jdbc:mysql://mysql01.talitts.hospedagemdesites.ws/talitts";
        String usuario = "talitts";
        String senha = "talitabp123*";
        
        
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            return DriverManager.getConnection(url, usuario, senha);    
        }catch(ClassNotFoundException e){  
            throw new SQLException(e.getMessage());  
        }  
          
    } 
        
            
        
        
            
                            
}
        
    

