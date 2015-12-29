<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.talita.model.Cliente" %>
<%@page import="br.com.talita.DAO.ClienteDAO" %>

<!DOCTYPE html>
<%
    ClienteDAO dao = new ClienteDAO();
    List<Cliente> c = dao.lista();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        
        <%@include file="view/btn-inicio.html" %>
        <%@include file="view/lista-esquerda.html" %>
        
        <div class="span11" align="center">
            <div class="borda">


                <h1 align="center">Tabela Cadastro Clientes</h1>
                <br>   
                <div align="center">
                <div align="center">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th BGCOLOR="#66CDAA">Cod_cliente</th>
                                <th BGCOLOR="#66CDAA">Nome</th>
                                <th BGCOLOR="#66CDAA">Cpf</th>
                                <th BGCOLOR="#66CDAA">Email</th>
                                <th BGCOLOR="#66CDAA">Alterar/Excluir</th>

                            </tr>

                        </thead>

                        <tbody>	


                            <% for (Cliente cliente : c) {%>
                            <tr>
                                <td><%=cliente.getCod_cliente()%> </td>
                                <td><%=cliente.getNome()%></td>
                                <td><%=cliente.getCpf()%></td>
                                <td><%=cliente.getEmail()%></td>

                                <td><a href="excluirClientes.jsp?cod_cliente=<%=cliente.getCod_cliente()%>">Excluir</a>
                                    <div>
                                        <a href="alterarClientes.jsp?cod_cliente=<%=cliente.getCod_cliente()%>">Alterar</a>
                                    </div>
                                </td>


                                <% }%>
                            </tr>



                        </tbody> 

                    </table>
                </div>
            </div>  
        </div>            

        
       <%@include file="view/footer.html" %>


    </body>
</html>
