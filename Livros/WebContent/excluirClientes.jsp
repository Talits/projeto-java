

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.talita.model.Cliente" %>
<%@page import="br.com.talita.DAO.ClienteDAO" %>

<!DOCTYPE html>
<%
    String cod_cliente= request.getParameter("cod_cliente");
    Cliente c = new Cliente();
    c.setCod_cliente(Integer.parseInt(cod_cliente));
    ClienteDAO dao = new ClienteDAO();
    dao.excluir(c) ;
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="view/btn-inicio.html" %>
        <br>
        <h1>Excluido com sucesso</h1>
    </body>
</html>