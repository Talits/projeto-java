

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.talita.model.Funcionario" %>
<%@page import="br.com.talita.DAO.FuncionarioDAO" %>

<!DOCTYPE html>

<%
    String cod_func= request.getParameter("cod_func");
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");
    String email = request.getParameter("email");
    
    Funcionario f = new Funcionario();
    f.setCod_func(Integer.parseInt(cod_func));
    f.setNome(nome);
    f.setCpf(cpf);
    f.setEmail(email);
    FuncionarioDAO dao = new FuncionarioDAO();
    dao.alterar(f);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Funcionario</title>
    </head>
    <body>
        
		<%@include file="view/btn-inicio.html" %>       
        <h1>Cod funcionario: <%=cod_func%></h1><br>
        <h1>Nome : <%=nome%></h1> <br>
        <h1>CPF: <%=cpf%></h1> <br>
        <h1>Email : <%=email%></h1> <br>
        <%@include file="view/footer.html" %>
    </body>
</html>

