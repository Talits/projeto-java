

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.talita.model.Cliente" %>
<%@page import="br.com.talita.DAO.ClienteDAO" %>

<!DOCTYPE html>

<%
    
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");
    String email = request.getParameter("email");
    
   
    
    
    Cliente cliente = new Cliente();
    
    cliente.setNome(nome);
    cliente.setCpf(cpf);
    cliente.setEmail(email);
    ClienteDAO c = new ClienteDAO();
    c.inserir(cliente);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="view/btn-inicio.html" %>
        <h1>Nome : <%=nome%></h1> <br>
        <h1>CPF : <%=cpf%></h1> <br>
        <h1>Email : <%=email%></h1> <br>
        <%@include file="view/footer.html" %>
    </body>
</html>
