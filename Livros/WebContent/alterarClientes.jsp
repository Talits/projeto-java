<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.talita.model.Cliente" %>
<%@page import="br.com.talita.DAO.ClienteDAO" %>

<!DOCTYPE html>
<%
    String cod_cliente = request.getParameter("cod_cliente");

    Cliente c = new Cliente();

    c.setCod_cliente(Integer.parseInt(cod_cliente));
    ClienteDAO dao = new ClienteDAO();
    dao.busca(c);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Clientes</title>
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
    
        <%@include file="view/btn-inicio.html" %>
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

                <h2 align="center">Alterar Clientes</h2>     
                <br>

                <form name="Cliente" action="ValidaAlteracaoCliente.jsp" method="POST">
                    <br>

                    
                    <h4>Nome</h4> 
                    <input class="span8" type="text" name="nome" value="<%=c.getNome()%>" required>  <br>
                    <h4> CPF</h4>
                    <input class="span8" pattern="^\d{3}.\d{3}.\d{3}-\d{2}$" type="tel" name="cpf" value="<%=c.getEmail()%>" required>  <br>
                    <h4>Email</h4>
                    <input class="span8" type="email" name="email" value="<%=c.getCpf()%>" required>  <br>
                    <input type="hidden" name="cod_cliente" value="<%=c.getCod_cliente()%>">  <br>


                    <input class="btn btn-info" type="submit" value= "Enviar">

                </form>
            </div>  
        </div>
        <%@include file="view/footer.html" %>       
           
    </body>
</html>