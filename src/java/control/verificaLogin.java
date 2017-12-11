package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Professor;
import model.SessionHibernate;

/**
 *
 * @author filipe
 */
public class verificaLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        //se essa classe for chamada por get invalida a sessao
        String saida = request.getParameter("sair");
        if(saida != null && saida.equals("ok")){
            HttpSession session = request.getSession();
            session.invalidate();
           response.sendRedirect("index.jsp");
           
        }else{
            
            response.sendRedirect("view/inicio.jsp");
        }
        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        //Parametros formulario
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        //aqui recuperamos a sessao do usuario
        HttpSession session = request.getSession();
        //criamos o redirecionamento
        String end;
        String msg;
        //verifica usuario e senha
        List<Professor> list = SessionHibernate.recuperaProfessor(usuario,senha);
        
        if(list.size() > 0){
            Professor prof = list.get(0);
            msg = prof.getPrimeiroNome();
            Float salario = 500.00f;//trocar
            int tsalario = 1;//trocar
            session.setAttribute("nome", prof.getPrimeiroNome());
            session.setAttribute("sobrenome", prof.getSobrenome());
            session.setAttribute("email", prof.getEmail() );
            session.setAttribute("salario", 500.0f);
            session.setAttribute("tsalario", 1);    
            session.setAttribute("foto", "../img/user.png");
            end = ("view/inicio.jsp");
            
        }else{
            msg = "erro";
            end = ("index.jsp");
        }
        session.setAttribute("login",msg);
        
        response.sendRedirect(end);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
