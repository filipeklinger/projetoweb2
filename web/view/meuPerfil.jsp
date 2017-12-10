<%-- 
    Document   : meuPerfil
    Created on : 09/12/2017, 20:23:28
    Author     : filipe
--%>
<%@page import="java.sql.Date"%>
<%
    //aqui vamos setar as variaveis
    String identidade = "98.432.234-4";
    String email = session.getAttribute("email").toString();
    String nome = session.getAttribute("nome").toString();
    String sobrenome = session.getAttribute("sobrenome").toString();
    String modalidade = "Jump";
    String tipoSalario = "por hora";
    String sexo = "m";
    String telefone = "9 87654321";
    Long timeStamp = 1512861295l;//esse valor vai ser recuperado do banco
    //esse abaixo não deve mudar
    Date nascimento = new Date(timeStamp * 1000);//multiplica por mil pq nao atribuimos os milisegundos
    //adicionar campo Curriculo e Foto
%>
<div class="container">
<h1>Meu Perfil</h1>
    <div class="row margem">
        <form class="form-horizontal" action="ProfDados" method="POST" enctype="multipart/form-data">
            <fieldset>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="primeiro_nome">Primeiro nome</label>  
                    <div class="col-md-4">
                        <input type="text" name="primeiro_nome" id="primeiro_nome" value="<%= nome %>" maxlength="60"  class="form-control input-md" required="">
                        <div class="help-block">*minimo de 3 caracteres</div>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="sobrenome">Sobrenome</label>  
                    <div class="col-md-4">
                        <input id="sobrenome" name="sobrenome" type="text" value="<%= sobrenome %>" maxlength="60"  class="form-control input-md" required="">
                        <div class="help-block">*minimo de 6 caracteres</div>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="telefone">Telefone</label>
                    <div class="col-sm-4">
                        <input id="telefone" name="telefone" type="text" value="<%= telefone %>" maxlength="12"  class="form-control input-md" required="">
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="identidade">Identidade</label>  
                    <div class="col-md-4">
                        <input id="identidade" name="identidade" type="text" value="<%= identidade %>" maxlength="11"  class="form-control input-md" required="">
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">Email</label>  
                    <div class="col-md-4">
                        <input id="email" name="email" type="text" value="<%= email %>" OnKeyUp="ehEmail();" maxlength="80"  class="form-control input-md" required="">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="dnasc">Data de nascimento</label>  
                    <div class="col-md-4">
                        <input id="dnasc" name="nascimento" type="date" value="<%= nascimento %>" maxlength="10" OnKeyUp="formatar(this, '##-##-####');" class="form-control input-md" required="">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="sexo">Sexo</label>  
                    <% if (sexo.equals("m")) { %>
                        <div class="col-md-2">

                            <label class="col-md-2 control-label">Masculino</label>
                            <input id="sexo" name="sexo" type="radio" value="m" class="form-control input-md" required=""  checked="checked">
                        </div>
                        <div class="col-md-2">
                            <label class="col-md-2 control-label">Feminino</label>
                            <input id="sexo" name="sexo" type="radio" value="f" class="form-control input-md" required="">
                        </div>
                    <% } else { %>
                        <div class="col-md-2">

                            <label class="col-md-2 control-label">Masculino</label>
                            <input id="sexo" name="sexo" type="radio" value="m" class="form-control input-md" required="">
                        </div>
                        <div class="col-md-2">
                            <label class="col-md-2 control-label">Feminino</label>
                            <input id="sexo" name="sexo" type="radio" value="f" class="form-control input-md" required=""  checked="checked">
                        </div>
                    <% }%>
                </div>
                <!--Fim -->
            </fieldset>
            <div class="centro">
                <input id="enviar" type="submit" class="btn btn-primary btn-primary" value="Enviar" />
                <input type="reset"  class="btn btn-primary btn-primary" value="Resetar" />
            </div>
        </form>
    </div>
</div>
