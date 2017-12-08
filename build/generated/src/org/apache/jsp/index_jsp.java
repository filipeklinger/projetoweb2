package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/login.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"br\">\n");
      out.write("    <head>\n");
      out.write("        <title>Intranet!</title>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap-4.0.0/css/bootstrap.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        ");
      out.write("<div class=\"container py-5\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-12\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-6 mx-auto\">\n");
      out.write("                    <span class=\"anchor\" id=\"formLogin\"></span>\n");
      out.write("                    <!-- form card login -->\n");
      out.write("                    <div class=\"card rounded-0\">\n");
      out.write("                        <div class=\"card-header\">\n");
      out.write("                            <h3 class=\"mb-0\">Academia - Intranet</h3>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <form class=\"form\" method=\"POST\" action=\"#\" role=\"form\" autocomplete=\"off\" id=\"formLogin\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label for=\"uname1\">UsuÃ¡rio</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control form-control-lg rounded-0\" name=\"uname1\" id=\"uname1\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>Senha</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control form-control-lg rounded-0\" id=\"pwd1\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <span class=\"custom-control-description small\">\n");
      out.write("                                        <a href=\"registroAluno.html\">Registre-se!</a>\n");
      out.write("\n");
      out.write("                                    </span>\n");
      out.write("                                </div>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success btn-lg float-right\">Entrar</button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                        <!--/card-block-->\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /form card login -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!--/row-->\n");
      out.write("        </div>\n");
      out.write("        <!--/col-->\n");
      out.write("    </div>\n");
      out.write("    <!--/row-->\n");
      out.write("</div>\n");
      out.write("<!--/container-->\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- Optional JavaScript -->\n");
      out.write("        <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("        <script src=\"bootstrap-4.0.0/js/jquery-3.2.1.slim.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap-4.0.0/js/popper.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap-4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
