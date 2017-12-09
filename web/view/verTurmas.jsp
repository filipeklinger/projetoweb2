<%-- 
    Document   : verTurmas
    Created on : 09/12/2017, 10:41:00
    Author     : filipe
--%>

<h1>Turmas cadastradas!</h1>

<%
    //Aqui vamos inicializar somente e dentro do loop vamos recuperando do banco
    int identificador = 1;
    String[] professor = {"Filipe","Robert","Romeu","Vinicius","Anonimo"};
    String[] horario = {"10:30","11:30","13:30","14:30","16:30"};
    String[] dias = {"Seg - Qua","Ter - Qui","Seg - Qua","Ter - Qui","Seg - Qua"};
    int[] nAlunos = {10,8,12,4,11};
    int maxAlunos = 20;
    String mensalidade = "40";
    String[] modalidade = {"Musculação","Treinamento Funcional","Aerobica","Musculação","Jump"};
%>

<table class='table table-striped'>
    <thead>
        <tr>    
            <th>Professor</th>
            <th>Horario</th>
            <th>Dia</th>
            <th>Nº Alunos</th>
            <th>Mensalidade</th>
            <th>Modalidade</th>
            <th>Editar</th>
        </tr>
    </thead>
    <tbody>
        <% for(int i=0;i<5;i++){ 
            //aqui coloquei o identificador recebendo o contador mas ele deve receber o id do banco
            identificador = i+1; %>
        <tr>
            <td><span class='capitalize'><%= professor[i] %></span></td>
            <td><%= horario[i] %></td>
            <td><%= dias[i] %></td>
            <td><%= nAlunos[i] %>/<%= maxAlunos %></td>
            <td>R$ <%= mensalidade %>,00</td>
            <td><%= modalidade[i] %></td>
            <td><form action='#' method='POST'><button class='btn btn-default' name='id' type='submit' value='<%= identificador %>' ><span class='glyphicon glyphicon-pencil'></span></button></form></td>
        </tr>
        <% } %>
    </tbody>
</table>                