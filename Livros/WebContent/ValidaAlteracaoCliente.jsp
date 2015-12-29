<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.talita.model.Cliente" %>
<%@page import="br.com.talita.DAO.ClienteDAO" %>

<!DOCTYPE html>

<%
    String cod_cliente= request.getParameter("cod_cliente");
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");
    String email = request.getParameter("email");
    int cod;
    
    
    cod=Integer.parseInt(cod_cliente);
    
    Cliente c = new Cliente();
    
    c.setCod_cliente(cod);
    c.setNome(nome);
    c.setCpf(cpf);
    c.setEmail(email);
    ClienteDAO dao = new ClienteDAO();
    dao.alterar(c);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Cliente</title>
    </head>
    <body>
        <%@include file="view/btn-inicio.html" %>
        <h1>Cod_cliente: <%=cod_cliente%></h1><br>
        <h1>Nome : <%=nome%></h1> <br>
        <h1>CPF : <%=cpf%></h1> <br>
        <h1>Email : <%=email%></h1> <br>
        <%@include file="view/footer.html" %>
        
    </body>
</html>

