/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.talita.testes;

import br.com.talita.DAO.ClienteDAO;
import br.com.talita.DAO.FuncionarioDAO;
import br.com.talita.model.Cliente;
import br.com.talita.model.Funcionario;
import br.com.talita.model.Livro;
import java.sql.SQLException;

/**
 *
 * @author lab7aluno
 */
public class ClasseCrud {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Cliente c1 = new Cliente();
        Livro l=new Livro();
        
        
        c1.setNome("Talita");
        c1.setCpf("000.000.000-00");
        c1.setEmail("talita@bernardes.tecnologia.ws");
        ClienteDAO dao = new ClienteDAO();
        
        dao.lista();
        
    }
    
}
