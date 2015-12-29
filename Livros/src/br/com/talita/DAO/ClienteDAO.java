/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.talita.DAO;


import br.com.talita.jdbc.ConnectionFactory;
import br.com.talita.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
    


    private Connection c;
    
    public ClienteDAO() throws SQLException, ClassNotFoundException{
        this.c = new ConnectionFactory().getConnection();
    }
    
    public void inserir(Cliente cliente) throws SQLException{
        String sql = "insert into cliente" + " (nome,cpf,email)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        
        stmt.setString(1,cliente.getNome());
        stmt.setString(2,cliente.getCpf());
        stmt.setString(3,cliente.getEmail());


        // executa
        stmt.execute();
        stmt.close();
    }
    
    public void excluir(Cliente cl) throws SQLException{
        String sql = "delete from cliente WHERE cod_cliente = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,cl.getCod_cliente());
        // executa
        stmt.execute();
        stmt.close();
    }

    public Cliente busca(Cliente cl) throws SQLException{
        String sql = "select * from cliente WHERE cod_cliente = ?";
        // prepared statement para inserção
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,cl.getCod_cliente());
        // executa
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {      
           
            cl.setCod_cliente(rs.getInt("cod_cliente"));
            cl.setNome(rs.getString("nome"));
            cl.setEmail(rs.getString("cpf"));
            cl.setCpf(rs.getString("email"));
           
        }
        
        stmt.close();
        return cl;
    }

    public Cliente alterar(Cliente cl) throws SQLException{
        String sql = "UPDATE cliente SET nome = ?, cpf= ?, email = ? WHERE cod_cliente = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        //stmt.setInt(1,cl.getCod_cliente());
        
        stmt.setString(1,cl.getNome());
        stmt.setString(2,cl.getCpf());
        stmt.setString(3,cl.getEmail());
        stmt.setInt(4,cl.getCod_cliente());
        
        
        
        System.out.println(stmt+"\n");
        // executa
        stmt.execute();
        stmt.close();
        return cl;
    }

    public List<Cliente> lista() throws SQLException{
       

        List<Cliente> cl = new ArrayList<Cliente>();
        
        PreparedStatement stmt = this.c.prepareStatement("select * from cliente");
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            Cliente client= new Cliente();
           
            client.setCod_cliente(rs.getInt("cod_cliente"));
            client.setNome(rs.getString("nome"));
            client.setCpf(rs.getString("cpf"));
            client.setEmail(rs.getString("email"));
            
            // adiciona o contato à lista de contatos
            cl.add(client);
        }
        
        rs.close();
        stmt.close();
        return cl;
        
    }

    
}