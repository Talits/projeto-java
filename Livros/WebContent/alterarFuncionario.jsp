

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.talita.model.Funcionario" %>
<%@page import="br.com.talita.DAO.FuncionarioDAO" %>

<!DOCTYPE html>
<%
    String cod_fun = request.getParameter("cod_func");
    Funcionario c1 = new Funcionario();
    
    c1.setCod_func(Integer.parseInt(cod_fun));
    FuncionarioDAO dao = new FuncionarioDAO();
    c1 = dao.busca(c1);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        
        <%@include file="view/btn-inicio.html" %>
        <br>
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

                <h2 align="center">Alterar Funcionario</h2>     
                <br>
                <form name="Funcionario" action="ValidaAlteracaoFuncionario.jsp" method="POST">

                    <input type="hidden" name="cod_func" value="<%=c1.getCod_func()%>">  <br>
                    <h4>Nome</h4>
                    <input class="span8"  type="text" name="nome" value="<%=c1.getNome()%>" required>  <br>
                    <h4>CPF</h4>
                    <input class="span8" pattern="^\d{3}.\d{3}.\d{3}-\d{2}$" type="tel" name="cpf" value="<%=c1.getEmail()%>" required>  <br>
                    <h4>Email</h4> 
                    <input class="span8" type="email" name="email" value="<%=c1.getCpf()%>" required>  <br>


                    <input class="btn btn-info" type="submit" value= "Enviar">

                </form>
            </div>
        </div>                  
        <%@include file="view/footer.html" %>
                    
    </body>
</html>