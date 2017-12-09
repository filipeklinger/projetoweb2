<%@page contentType="text/html"%>
<!doctype html>
<html lang="br">
    <head>
        <title>Intranet!</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/cssPersonalizado.css">
    </head>
    <body class="main-bg">
        <div class="container" style="align-self: center;">
            <% //aqui recuperamos a sessao do usuario
                String msg = (String) session.getAttribute("login");
                if (!(msg == null)) {
                    out.print("<div class='alert alert-danger alert-dismissible' role='alert'>");
                    out.print("<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>");
                    out.print("<strong>Login ou senha errados</strong>");
                    out.print("</div>");
                }%>

            <div class="container-fluid">
                <div class="row" id="pwd-container">
                    <div class="col-xs-4 col-xs-offset-4">
                        <section class="login-form">
                            <form method="POST" action="verificaLogin" role="login">
                                <h3 class="form-links" style="margin-bottom: 10px;">Academia de Web2</h3>
                                <p class="text-mute" style="text-align: right">&copy;2017 Academia Web2</p>
                                <input type="text" name="usuario" placeholder="Email" required class="form-control input-lg" />
                                <input type="password" name="senha" class="form-control input-lg" id="password" placeholder="Senha" required="" />          
                                <button type="submit" class="btn btn-lg btn-primary btn-block">Entrar</button>
                                <div>
                                    <a href="recuperarSenha.html">Recuperar Senha</a>
                                </div>
                            </form>
                        </section>  
                    </div>
                </div>
            </div>
            <!--/container-->

            <!-- JavaScript -->
            <!-- jQuery first,then Bootstrap JS -->
            <script src="bootstrap/js/jquery.min.js"></script>
            <script src="bootstrap/js/bootstrap.js"></script>
    </body>
</html>