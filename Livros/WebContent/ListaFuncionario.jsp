<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.talita.model.Funcionario" %>
<%@page import="br.com.talita.DAO.FuncionarioDAO" %>

<!DOCTYPE html>
<%
    FuncionarioDAO dao = new FuncionarioDAO();
    List<Funcionario> f = dao.lista();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        
        <%@include file="view/btn-inicio.html" %>
        <br>
        <br>
        <div class="span3">
            <img src="img/livros.jpg" />
        </div>
        <br>

        <div class="span11" align="center">
            <div class="borda">
                <h1 align="center">Tabela Funcionários</h1>
                <br>    

                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th BGCOLOR="#66CDAA">Cod_func</th>
                            <th BGCOLOR="#66CDAA">Nome</th>
                            <th BGCOLOR="#66CDAA">Cpf</th>
                            <th BGCOLOR="#66CDAA">Email</th>
                            <th BGCOLOR="#66CDAA">Alterar/Excluir</th>

                        </tr>

                    </thead>
                    <tbody>	

                        <% for (Funcionario func : f) {%>
                        <tr>
                            <td><%=func.getCod_func()%></td>
                            <td><%=func.getNome()%></td>
                            <td><%=func.getCpf()%></td>
                            <td><%=func.getEmail()%></td>
                            <td>
                                <a href="excluiFuncionario.jsp?cod_func=<%=func.getCod_func()%>">Excluir</a>
                                <div>
                                    <a href="alterarFuncionario.jsp?cod_func=<%=func.getCod_func()%>">Alterar</a>
                                </div>
                            </td>      

                        </tr>      
                        <% }%>
                </table>
            </div>
        </div>        

        <%@include file="view/footer.html" %>   
    </body>
</html>
