

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
       <%@include file="../view/topo-form.html" %> 
        
            <div align="center" class=" borda">
                <br>
                <br>
                <form name="Livro" action="ValidaLivros.jsp" method="POST">
                    <h4>Autor:</h4> 
                    <input class="span8" type="text" name="autor" placeholder="Autor" required>  <br><br>
                    <h4>Título:</h4> 
                    <input class="span8" type="text" name="titulo" placeholder="Titulo" required>  <br><br>
                    <h4>Editora:</h4>
                    <input class="span8" type="text" name="editora" placeholder="Editora" required>  <br><br>

                    <div class="btn-group">
                        <br>

                        <input class="btn btn-info" type="submit" value= "Enviar">

                    </div>    
                </form>
            </div>    
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <%@include file="view/footer.html" %>
    </body>
</html>

