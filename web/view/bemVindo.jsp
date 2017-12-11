<div class="main-bg">
<div class="container inicio" id="add_style">
            <h1 id="page_title">Área de Administração</h1>
        <section class="col-md-3">
            <%
            out.println("<img class='img-thumbnail img3x4' width='300' height='400' src='"+session.getAttribute("foto")+"' />");
            out.println("</section><section class='col-md-6' id='admin_style'>");
            
            out.println("<div><h3>Nome </h3><p class='text-muted'> "+session.getAttribute("nome")+" "+session.getAttribute("sobrenome")+"</p></div>");    
            out.println("<div><h3>Email </h3><p class='text-muted'> "+session.getAttribute("email")+"</p></div>");
            if(session.getAttribute("tsalario")!= null){
                out.println("<div><h3>Rendimento Esperado </h3><p class='text-muted'> R$ "+session.getAttribute("salario")+"0 </p></div>");
            }  
            %>
        </section>
</div>
</div>