

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.talita.model.Funcionario" %>
<%@page import="br.com.talita.DAO.FuncionarioDAO" %>

<!DOCTYPE html>
<%
    String cod_func= request.getParameter("cod_func");
    Funcionario c1 = new Funcionario();
    c1.setCod_func(Integer.parseInt(cod_func));
    FuncionarioDAO dao = new FuncionarioDAO();
    dao.excluir(c1) ;
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="view/btn-inicio.html" %>
         <h1>Excluido com sucesso</h1>
        
    </body>
</html>
