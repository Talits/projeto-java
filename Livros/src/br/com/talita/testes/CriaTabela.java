
package br.com.talita.testes;

import br.com.talita.jdbc.ConnectionFactory;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author Talita
 */
public class CriaTabela {

    
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Connection c = new ConnectionFactory().getConnection();

        Statement stmt;
        String sql;

        try {
            

            //tbl_clientes
            stmt = c.createStatement();
            sql = "CREATE TABLE IF NOT EXISTS cliente("
                    + "cod_cliente INTEGER PRIMARY KEY AUTO_INCREMENT,"
                    + "nome VARCHAR(255) NOT NULL,"
                    + "cpf VARCHAR(255) NOT NULL,"
                    + "email Varchar(255) NOT NULL"
                    + ");";
            stmt.executeUpdate(sql);
            stmt.close();

            
            
            //tbl_livros
            stmt = c.createStatement();
            sql = "CREATE TABLE IF NOT EXISTS livros("
                    + "ISBN INTEGER PRIMARY KEY AUTO_INCREMENT,"
                    + "autor VARCHAR(255) NOT NULL,"
                    + "titulo VARCHAR(255) NOT NULL,"
                    + "editora VARCHAR(255) NOT NULL"
                    + ");";
            stmt.executeUpdate(sql);
            stmt.close();
                       
                    
            
            //tbl_funcionarios
            stmt = c.createStatement();
            sql = "CREATE TABLE IF NOT EXISTS funcionarios("
                    + "cod_func INTEGER PRIMARY KEY AUTO_INCREMENT,"
                    + "nome VARCHAR(255) NOT NULL,"
                    + "cpf VARCHAR(255) NOT NULL,"
                    + "email VARCHAR(255) NOT NULL"
                    + ");";
            stmt.executeUpdate(sql);
            stmt.close();

            c.close();
        } catch (Exception e) {
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }
        System.out.println("Bd criado!");
    }
    
}
