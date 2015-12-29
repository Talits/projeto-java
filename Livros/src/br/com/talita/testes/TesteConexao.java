
package br.com.talita.testes;
import br.com.talita.jdbc.ConnectionFactory;
import java.sql.Connection;
import java.sql.SQLException;


public class TesteConexao {
   


    public static void main(String[] args) throws SQLException, ClassNotFoundException {        
        Connection c = new ConnectionFactory().getConnection();
        System.out.println("conectado");
        c.close();
        System.out.println("conexão fechada");
    }    


    
}
