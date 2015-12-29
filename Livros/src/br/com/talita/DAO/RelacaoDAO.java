/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.talita.DAO;

import br.com.talita.model.Livro;

import java.util.List;
import br.com.talita.jdbc.ConnectionFactory;
import br.com.talita.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class RelacaoDAO {

    private Connection c;

    public RelacaoDAO() throws SQLException, ClassNotFoundException {
        this.c = new ConnectionFactory().getConnection();
    }

    /**
     *
     */
    public List<Livro> lista() throws SQLException, ClassNotFoundException {

        PreparedStatement stmt = this.c.prepareStatement("SELECT *FROM livros as l INNER JOIN cliente as c ON l.ISBN= c.cod_cliente");

        ResultSet rs = stmt.executeQuery();



        ArrayList<Livro> livro = new ArrayList<Livro>();

        while (rs.next()) {
            
            Livro l = new Livro();
            Cliente c = new Cliente();
            
            l.setISBN(rs.getInt("ISBN"));
            l.setTitulo(rs.getString("titulo"));

            c.setCod_cliente(rs.getInt("cod_cliente"));
            c.setNome(rs.getString("nome"));
            c.setEmail(rs.getString("email"));

            l.setCliente(c);

            livro.add(l);

        }

        rs.close();
        stmt.close();
        return livro;

    }

}
