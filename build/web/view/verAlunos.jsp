<%-- 
    Document   : index
    Created on : 22/11/2017, 20:24:13
    Author     : filipe
--%>


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
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>

                    <a class="navbar-brand" href="#"><a class="navbar-brand" href="#">Olá, <span class="capitalize"><%=session.getAttribute("login")%></span></a>
                </div>

                <div class="collapse navbar-collapse" id="myNavbar">

                    <ul class="nav navbar-nav">
                        <li><a href="registroAluno.html">Adicionar Aluno</a></li>
                        <li><a href="registroProfessor.html">Adicionar Professor</a></li>
                        <li><a href="#">Editar Meu Perfil</a></li>
                        <li><a href="#">Ver Alunos</a></li>
                        <li><a href="#">Ver Turmas</a></li>
                        <li><a href="verificaLogin">Sair <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
                    <%@include file = "registroAluno.html" %>
        <!-- jQuery first, then Bootstrap JS -->
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
    </body>
</html>