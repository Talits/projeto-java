<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca Cadastro</title>
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="//assets.locaweb.com.br/locastyle/1.3.0/stylesheets/locastyle.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
    
        <%@include file="../view/btn-inicio.html" %>
        <%@include file="../view/topo-form.html" %>
        
                <form name="Clientes" action="ValidarClientes.jsp" method="POST">

                    <br>

                    <h4>Nome:</h4>
                    <input class="span8" type="text" name="nome" placeholder="Nome" required >
                    <br><br>
                    <h4>CPF:</h4>
                    <input class="span8" pattern="^\d{3}.\d{3}.\d{3}-\d{2}$" type="tel" name="cpf" placeholder="Ex.: xxx.xxx.xxx-xx" required >
                    <br>
                    <br>
                    <h4>Email:</h4>
                    <input class="span8" type="email" name="email" id="email" placeholder="Email" required >
                    <br>
                    <br>
                    <div class=" span12 btn-group">
                        <br>
                        <br>
                        <input class="btn btn-info" type="submit" value= "Enviar" >
                        <br>
                        <br>
                        <br>
                    </div>



                </form>
            </div> 
        </div>
        <%@include file="../view/footer.html" %>

    </body>
</html>

