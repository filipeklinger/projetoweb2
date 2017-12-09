<%-- 
    Document   : index
    Created on : 22/11/2017, 20:24:13
    Author     : filipe
--%>

<%
    //Aqui vamos inicializar somente e dentro do loop vamos recuperando do banco
    int identificador = 1;
    String foto = "";
    String nome = "";
    String idade = "";
    String sexo = "";
    String desconto = "";
    String bolsista = "";
    String ativo = "Sim";
%>
<h1>Alunos cadastrados</h1>

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
        <% for(int i=0;i<5;i++){ 
            //aqui coloquei o identificador recebendo o contador mas ele deve receber o id do banco
            identificador = i+1; %>
        <tr>

            <td><%= foto%></td>
            <td><span class='capitalize'><%= nome%></span></td>
            <td><%= idade%></td>
            <td><%= sexo%></td>
            <td><%= desconto%></td>
            <td><%= bolsista%></td>
            <td><%= ativo%></td>
            <td><form action='#' method='POST'><button class='btn btn-default' name='id' type='submit' value='<%= identificador %>' ><span class='glyphicon glyphicon-pencil'></span></button></form></td>
        </tr>
        <% } %>
    </tbody>
</table>                