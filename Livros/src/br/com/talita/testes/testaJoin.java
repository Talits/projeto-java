/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.talita.testes;




import br.com.talita.jdbc.ConnectionFactory;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class testaJoin {

    
    


   public static void main(String[] args) throws Exception{
       
     Connection c =new ConnectionFactory().getConnection();

      
      
      Statement stmt = c.createStatement();
      String query;
      
       query = "SELECT *FROM livros as l INNER JOIN cliente as c where l.ISBN= c.cod_cliente;";
       //query = "SELECT livros.titulo , cliente.nome FROM livros"
             //  + " INNER JOIN cliente ON cliente.cod_cliente = livros.ISBN; ";
      
                        
      
      ResultSet rs = stmt.executeQuery(query);
      
      System.out.println("cod cliente /nome  /ISBN  titulo");
      
      while (rs.next()) {
         int cod_cliente = rs.getInt("cod_cliente");
         int ISBN = rs.getInt("ISBN");
         String nome = rs.getString("nome");
         String titulo = rs.getString("titulo");
         System.out.println("cod: "+ cod_cliente+ "  nome: "+ nome +"   ISBN: "+ ISBN + " titulo:  "+titulo);
         System.out.println(nome+" , "+ titulo);
      }
      System.out.println();
      System.out.println();
   }
}
    

