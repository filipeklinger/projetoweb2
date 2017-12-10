<%-- 
    Document   : index
    Created on : 22/11/2017, 20:24:13
    Author     : filipe
--%>

<%
    //Aqui vamos inicializar somente e dentro do loop vamos recuperando do banco
    int identificador = 1;
    String foto = "";
    String[] nome = {"Alice","Sophia","Helena","Valentina","Laura"};
    int[] idade = {18,22,21,19,28};
    String[] sexo = {"F","F","F","F","F"};
    int[] desconto = {0,25,0,15,0};
    String bolsista = "N�o";
    String ativo = "Sim";
%>
<div class="container">
        <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" ><h3>Alunos cadastrados</h3></div>
<div style="overflow: auto;">
    <table class='table table-striped'>
        <thead>
            <tr>    
                <th>Foto</th>
                <th>Nome</th>
                <th>Idade</th>
                <th>Sexo</th>
                <th>Desconto</th>
                <th>Bolsista</th>
                <th>Ativo</th>
                <th>Editar</th>
            </tr>
        </thead>
        <tbody>
            <% for (int i = 0; i < 5; i++) {
                //aqui coloquei o identificador recebendo o contador mas ele deve receber o id do banco
                identificador = i + 1;%>
            <tr>

                <td>
                        <div class="col-xs-3">
                            <img class="img-thumbnail img3x4" src="<%= session.getAttribute("foto") %>" /> 
                        </div>
                </td>
                <td><span class='capitalize'><%= nome[i] %></span></td>
                <td><%= idade[i] %></td>
                <td><%= sexo[i] %></td>
                <td><%= desconto[i] %> %</td>
                <td><%= bolsista%></td>
                <td><%= ativo%></td>
                <td><form action='#' method='POST'><button class='btn btn-default' name='id' type='submit' value='<%= identificador%>' ><span class='glyphicon glyphicon-pencil'></span></button></form></td>
            </tr>
            <% }%>
        </tbody>

    </table> 
</div>
        </div>
</div>