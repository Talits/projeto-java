
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.talita.model.Livro" %>
<%@page import="br.com.talita.DAO.LivroDAO" %>

<!DOCTYPE html>
<%
    LivroDAO dao = new LivroDAO();
    List<Livro> l = dao.lista();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
    
        <%@include file="view/btn-inicio.html" %>
        <%@include file="view/lista-esquerda.html" %>
        
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th BGCOLOR="#66CDAA">ISBN</th>
                                <th BGCOLOR="#66CDAA">Autor</th>
                                <th BGCOLOR="#66CDAA">Titulo</th>
                                <th BGCOLOR="#66CDAA">Editora</th>
                                <th BGCOLOR="#66CDAA">Alterar/Excluir</th>

                            </tr>

                        </thead>

                        <tbody>	   
                            <% for (Livro livro : l) {%>
                            <tr>
                                <td><%=livro.getISBN()%></td>
                                <td><%=livro.getAutor()%></td>
                                <td><%=livro.getTitulo()%></td>
                                <td><%=livro.getEditora()%></td>
                                <td>
                                    <a href="excluiLivros.jsp?ISBN=<%=livro.getISBN()%>">Excluir</a>
                                    <div>
                                        <a href="alterarLivros.jsp?ISBN=<%=livro.getISBN()%>">Alterar</a>
                                    </div>
                                </td>   
                            </tr>   
                            <% }%>
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
