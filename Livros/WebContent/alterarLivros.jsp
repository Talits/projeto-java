

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.talita.model.Livro" %>
<%@page import="br.com.talita.DAO.LivroDAO" %>

<!DOCTYPE html>
<%
    String ISBN = request.getParameter("ISBN");
    Livro l = new Livro();
    l.setISBN(Integer.parseInt(ISBN));
    LivroDAO dao = new LivroDAO();
    dao.busca(l) ;
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@include file="view/btn-inicio.html" %>
        <br>
        <div class="span3" align="center">


            <div class="span9">
                <div class="span12">
                    <img src="img/imagem1.png" width="480"/>
                </div>

            </div>

        </div>  

        <br>
        <br>
        <br>
        <br>
        <br>

        <div class="span12 borda"> 
        <br>



        <div class="span12 " align="center">
            <h2 align="center">Alterar Livros</h2>
            <div align="center">
                <form name="Livros" action="ValidaAlteracaoLivros.jsp" method="POST">

                    <input type="hidden" name="ISBN" value="<%=l.getISBN()%>">  <br>
                    <h4>Autor</h4>
                    <input class="span8" type="text" name="autor" value="<%=l.getAutor()%>" required>  <br>
                    <h4>Titulo</h4>
                     <input class="span8" type="text" name="titulo" value="<%=l.getTitulo()%>" required>  <br>
                    <h4>Editora</h4>
                     <input class="span8" type="text" name="editora" value="<%=l.getEditora()%>" required>  <br>

                    <input class="btn btn-info" type="submit" value= "Enviar">
                </form>
            </div>
           </div> 
        </div> 
        <%@include file="view/footer.html" %>        
    </body>
</html>
