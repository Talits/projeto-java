
<%@page import="br.com.talita.DAO.LivroDAO"%>
<%@page import="br.com.talita.model.Cliente"%>
<%@page import="br.com.talita.model.Livro"%>
<%@page import="br.com.talita.DAO.RelacaoDAO"%>
<%@page import="java.util.List"%>



<%
    RelacaoDAO dao = new RelacaoDAO();
    List<Livro> l = dao.lista();
%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Emprestimos</title>
    </head>
    <body>
        
    
   
        
        <%@include file="view/btn-inicio.html" %>
        <div class="span3">
            <img src="img/livros.jpg" />
        </div>
        
        

        <div class="span8" align="center">
            <div class="borda"> 
                <h1 align="center">Tabela Emprestimo</h1><br> 
                <div align="center">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                
                                
                                <th BGCOLOR="#66CDAA">Titulo</th>
                                <th BGCOLOR="#66CDAA">Cod_cliente</th>
                                <th BGCOLOR="#66CDAA">Nome</th>
                                <th BGCOLOR="#66CDAA">Email</th>
                                
                                

                            </tr>

                        </thead>

                        <tbody>	
                      
                           <% for (Livro livro : l) {%>
                            <tr>
                                                               
                                <td><%=livro.getTitulo()%></td>
                                <td><%=livro.getCliente().getCod_cliente()%></td>
                                <td><%=livro.getCliente().getNome()%></td>
                                <td><%=livro.getCliente().getEmail()%></td>
                                 
                            </tr>   
                            <% }%>
                            
                            
                        </tbody> 

                    </table>
                </div>
            </div>  
        </div>            

        <div class="span3">
            <img src="img/livros.jpg" />
        </div>
        <%@include file="view/footer.html" %>


    </body>
</html>
  
