/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.talita.DAO;

import br.com.talita.jdbc.ConnectionFactory;
import br.com.talita.model.Livro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LivroDAO {
    
    private Connection c;
    
    public LivroDAO() throws SQLException, ClassNotFoundException{
        this.c = new ConnectionFactory().getConnection();
    }
    
    public void inserir(Livro l) throws SQLException{
       String sql = "insert into livros" + " (autor,titulo,editora)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        
        stmt.setString(1,l.getAutor());
        stmt.setString(2,l.getTitulo());
        stmt.setString(3,l.getEditora());


        // executa
        stmt.execute();
        stmt.close();
    }
    
    public void excluir(Livro l) throws SQLException{
        String sql = "delete  from livros WHERE ISBN = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,l.getISBN());
        // executa
        stmt.execute();
        stmt.close();
    }

    public Livro busca(Livro l) throws SQLException{
        String sql = "select * from livros WHERE ISBN = ?";
        // prepared statement para inserção
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,l.getISBN());
        // executa
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {      
            
            l.setISBN(rs.getInt("ISBN"));
            l.setAutor(rs.getString("autor"));
            l.setTitulo(rs.getString("titulo"));
            l.setEditora(rs.getString("editora"));
            
            
        }
        
        stmt.close();
        return l;
    }

    public Livro alterar(Livro l) throws SQLException{
        String sql = "UPDATE livros SET autor = ?, titulo = ?, editora = ? WHERE ISBN = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        
        stmt.setString(1,l.getAutor());
        stmt.setString(2,l.getTitulo());
        stmt.setString(3,l.getEditora());
        stmt.setInt(4,l.getISBN());
       
        
        // executa
        stmt.execute();
        stmt.close();
        return l;
    }

    public List<Livro> lista() throws SQLException{
         

        List<Livro> livro = new ArrayList<Livro>();
        
        PreparedStatement stmt = this.c.prepareStatement("select * from livros");
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            Livro l;
            l= new Livro();
            l.setISBN(rs.getInt("ISBN"));
            l.setAutor(rs.getString("autor"));
            l.setTitulo(rs.getString("titulo"));
            l.setEditora(rs.getString("editora"));
            
            
            
            livro.add(l);
        }
        
        rs.close();
        stmt.close();
        return livro;
        
    }
}

    

