<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.talita.model.Livro" %>
<%@page import="br.com.talita.DAO.LivroDAO" %>

<!DOCTYPE html>

<%
    String ISBN= request.getParameter("ISBN");
    String autor = request.getParameter("autor");
    String titulo = request.getParameter("titulo");
    String editora = request.getParameter("editora");
   
    Livro l = new Livro();
    l.setISBN(Integer.parseInt(ISBN));
    l.setAutor(autor);
    l.setTitulo(titulo);
    l.setEditora(editora);
    LivroDAO dao = new LivroDAO();
    dao.alterar(l);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Biblioteca</title>
    </head>
    <body>
        <%@include file="view/btn-inicio.html" %>
        <h1>ISBN: <%=ISBN%></h1> <br>
        <h1>Autor : <%=autor%></h1> <br>
        <h1>Titulo : <%=titulo%></h1> <br>
        <h1>Editora : <%=editora%></h1> <br>
        <%@include file="view/footer.html" %>
    </body>
</html>
