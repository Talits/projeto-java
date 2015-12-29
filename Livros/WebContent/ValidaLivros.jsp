
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.talita.model.Livro" %>
<%@page import="br.com.talita.DAO.LivroDAO" %>

<!DOCTYPE html>

<%
    
    String autor = request.getParameter("autor");
    String titulo = request.getParameter("titulo");
    String editora = request.getParameter("editora");
    
    Livro l = new Livro();
    
    l.setAutor(autor);
    l.setTitulo(titulo);
    l.setEditora(editora);
   
    
    LivroDAO livro=new LivroDAO();
    livro.inserir(l);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="view/btn-inicio.html" %>       
        <h1>Autor : <%=autor%></h1> <br>
        <h1>Titulo : <%=titulo%></h1> <br>
        <h1>Editora : <%=editora%></h1> <br>
        <%@include file="view/footer.html" %>
    </body>
</html>

