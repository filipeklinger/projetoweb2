<%-- 
    Document   : index
    Created on : 22/11/2017, 20:24:13
    Author     : filipe
--%>

<%@page contentType="text/html"%>
<!doctype html>
<html lang="br">
    <head>
        <title>Intranet</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="../bootstrap/cssPersonalizado.css">
    </head>
    <body class="others">
        <nav class="navbar navbar-inverse" style="margin-bottom: 0">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>

                    <a class="navbar-brand" href="?p=0" style="color: #fff;">Olá, <span class="capitalize"><%=session.getAttribute("login")%></span></a>
                </div>

                <div class="collapse navbar-collapse" id="myNavbar">

                    <ul class="nav navbar-nav">
                        <li><a href="?p=1">Adicionar Aluno</a></li>
                        <li><a href="?p=2">Adicionar Professor</a></li>
                        <li><a href="?p=3">Editar Meu Perfil</a></li>
                        <li><a href="?p=4">Ver Alunos</a></li>
                        <li><a href="?p=5">Ver Turmas</a></li>
                        <li><a href="../verificaLogin?sair=ok">Sair <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
<% //aqui recuperamos a sessao do usuario
                String msg = (String) session.getAttribute("msg");
                if (!(msg == null)) {
                    if(msg.contains("sucesso")){
                        out.print("<div class='alert alert-success alert-dismissible' role='alert'>");
                        out.print("<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>");
                        out.print("<strong> " + msg + " </strong>");
                        out.print("</div>");
                    }else{
                        out.print("<div class='alert alert-danger alert-dismissible' role='alert'>");
                        out.print("<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>");
                        out.print("<strong> " + msg + " </strong>");
                        out.print("</div>");
                    }
                session.setAttribute("msg", null);
                }
                
            int pag = 0;
            try {
                pag = Integer.parseInt(request.getParameter("p"));
            } catch (NumberFormatException e) {
                //nada
            }
            String arquivo = "bemVindo.jsp";
            switch (pag) {
                case 1:
                    arquivo = "registroAluno.html";
                    break;
                case 2:
                    arquivo = "registroProfessor.html";
                    break;
                case 3:
                    arquivo = "meuPerfil.jsp";
                    break;
                case 4:
                    arquivo = "verAlunos.jsp";
                    break;
                case 5:
                    arquivo = "verTurmas.jsp";
                    break;
                default:
                    arquivo = "bemVindo.jsp";
            }
        %>
        <jsp:include page='<%=arquivo%>' flush="true"/>

        <!-- jQuery first, then Bootstrap JS -->
        <script src="../bootstrap/js/jquery.min.js"></script>
        <script src="../bootstrap/js/bootstrap.js"></script>
    </body>
</html>