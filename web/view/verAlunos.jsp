<%-- 
    Document   : index
    Created on : 22/11/2017, 20:24:13
    Author     : filipe
--%>

<%@page import="model.Aluno"%>
<%@page import="java.util.List"%>
<%@page import="model.SessionHibernate"%>

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
            <% try{
                    List<Aluno> list = SessionHibernate.recuperaAlunos();
                    for(Aluno aluno:list){
                %>
            <tr>

                <td>
                        <div class="col-xs-3">
                            <img class="img-thumbnail img3x4" src="<%= session.getAttribute("foto") %>" /> 
                        </div>
                </td>
                <td><span class='capitalize'><%= aluno.getPrimeiroNome() %></span></td>
                <td><%= aluno.getNascimento() %></td>
                <td><%= aluno.getSexo() %></td>
                <td><%= aluno.getDesconto() %> %</td>
                <td><%= aluno.getBolsista().toString() %></td>
                <td><%= aluno.getAtivo().toString() %></td>
                <td><form action='../EditaAluno' method='POST'><button class='btn btn-default' name='id' type='submit' value='<%= aluno.getIdAluno() %>' ><span class='glyphicon glyphicon-pencil'></span></button></form></td>
            </tr>
            <%      }
                }catch(NullPointerException e){
                    out.print("Erro ao obter do banco: " + e + "<br>");
                    //Out.print(e);
                }
            %>
        </tbody>

    </table> 
</div>
        </div>
</div>