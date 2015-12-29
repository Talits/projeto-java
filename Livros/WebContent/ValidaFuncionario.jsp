

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.talita.model.Funcionario" %>
<%@page import="br.com.talita.DAO.FuncionarioDAO" %>

<!DOCTYPE html>

<%
    
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");
    String email = request.getParameter("email");
    
    Funcionario funcionario = new Funcionario();
    
    funcionario.setNome(nome);
    funcionario.setCpf(cpf);
    funcionario.setEmail(email);
    FuncionarioDAO f = new FuncionarioDAO();
    f.inserir(funcionario);
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


