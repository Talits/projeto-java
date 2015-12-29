

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.talita.model.Livro" %>
<%@page import="br.com.talita.DAO.LivroDAO" %>

<!DOCTYPE html>
<%
    String ISBN= request.getParameter("ISBN");
    Livro l = new Livro();
    l.setISBN(Integer.parseInt(ISBN));
    LivroDAO dao = new LivroDAO();
    dao.excluir(l) ;
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="view/btn-inicio.html" %>
        <br>
        <h1>Excluido com sucesso</h1>
    </body>
</html>
