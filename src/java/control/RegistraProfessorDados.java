/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Aluno;
import model.Professor;
import model.SessionHibernate;
import org.hibernate.HibernateException;

/**
 * @author filipe Precisamos a anotação @MultipartConfig para Upload de Arquivos
 */
@MultipartConfig
public class RegistraProfessorDados extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AlunoDados</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AlunoDados at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * RECEBE dados do FORM registroAluno.html
     *
     * @param request
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        Professor prof = new Professor();
        //inserindo dados no objeto prof
        prof.setIdentidade(request.getParameter("identidade"));
        prof.setEmail(request.getParameter("email"));
        prof.setPrimeiroNome(request.getParameter("primeiro_nome"));
        prof.setSobrenome(request.getParameter("sobrenome"));
        prof.setTelefone(request.getParameter("telefone"));
        
        //prof.setBolsista(getBinario(request.getParameter("bolsista")));
        prof.setSexo(request.getParameter("sexo").charAt(0));
        //todo prof inicia como Inativo e fica ativo ao se inscrever em turma
        //prof.setAtivo(false);
        String msg = "0";
        try {
            SessionHibernate.salvaDados(prof);
        } catch (HibernateException e) {
            msg = "Erro: " + e;
        }

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AlunoDados</title><meta charset=\"utf-8\">");
            out.println("</head>");
            out.println("<body>");
            if (!msg.equals("0")) {
                out.println(msg);
            } else {
                out.println("Objeto prof criado <br>");
                out.println("<br>Identidade: " + prof.getIdentidade());
                out.println("<br>Email: " + prof.getEmail());
                out.println("<br>Nome: " + prof.getPrimeiroNome());
                out.println("<br>Sobrenome: " + prof.getSobrenome());
                out.println("<br>Telefone: " + prof.getTelefone());
                out.println("<br>Sexo: " + prof.getSexo());
                out.println("<br>Ativo: " + prof.getAtivo());
                out.println("<br>*prof só fica ativo ao ser cadastrado em turma.");
            }

            out.println("</body>");
            out.println("</html>");
        }

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
