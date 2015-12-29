/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.talita.DAO;

import br.com.talita.jdbc.ConnectionFactory;
import br.com.talita.model.Funcionario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FuncionarioDAO {
    


    private Connection c;
    
    public FuncionarioDAO() throws SQLException, ClassNotFoundException{
        this.c = new ConnectionFactory().getConnection();
    }
    
    public void inserir(Funcionario func) throws SQLException{
        String sql = "insert into funcionarios" + " (nome,cpf,email)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        
        stmt.setString(1,func.getNome());
        stmt.setString(2,func.getCpf());
        stmt.setString(3,func.getEmail());


        // executa
        stmt.execute();
        stmt.close();
    }
    
    public void excluir(Funcionario func) throws SQLException{
        String sql = "delete from funcionarios WHERE cod_func = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,func.getCod_func());
        // executa
        stmt.execute();
        stmt.close();
    }

    public Funcionario busca(Funcionario f) throws SQLException{
        String sql = "select * from funcionarios WHERE cod_func = ?";
        // prepared statement para inserção
        PreparedStatement stmt = this.c.prepareStatement("select * from funcionarios WHERE cod_func= ?");
        // seta os valores
        stmt.setInt(1,f.getCod_func());
        // executa
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {      
            
            f.setCod_func(rs.getInt("cod_func"));
            f.setNome(rs.getString("nome"));
            f.setEmail(rs.getString("cpf"));
            f.setCpf(rs.getString("email"));
            
        }
        
        stmt.close();
        return f;
    }

    public Funcionario alterar(Funcionario func) throws SQLException{
        String sql = "UPDATE funcionarios SET nome = ?, cpf = ?, email = ? WHERE cod_func = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        
        stmt.setString(1,func.getNome());
        stmt.setString(2,func.getCpf());
        stmt.setString(3,func.getEmail());
        stmt.setInt(4,func.getCod_func());
        
         System.out.println(stmt+"\n");
 
        
        stmt.execute();
        stmt.close();
        return func;
    }

    public List<Funcionario> lista() throws SQLException{
         

        List<Funcionario> f = new ArrayList<Funcionario>();
        
        PreparedStatement stmt = this.c.prepareStatement("select * from funcionarios");
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            Funcionario func;
            func = new Funcionario();
            func.setCod_func(rs.getInt("cod_func"));
            func.setNome(rs.getString("nome"));
            func.setCpf(rs.getString("cpf"));
            func.setEmail(rs.getString("email"));
            
          
            f.add(func);
        }
        
        rs.close();
        stmt.close();
        return f;
        
    }

    
}
