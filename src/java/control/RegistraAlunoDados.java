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
import model.SessionHibernate;
import org.hibernate.HibernateException;

/**
 * @author filipe Precisamos a anotação @MultipartConfig para Upload de Arquivos
 */
@MultipartConfig
public class RegistraAlunoDados extends HttpServlet {

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
        Aluno aluno = new Aluno();
        //inserindo dados no objeto aluno
        aluno.setIdentidade(request.getParameter("identidade"));
        aluno.setEmail(request.getParameter("email"));
        aluno.setPrimeiroNome(request.getParameter("primeiro_nome"));
        aluno.setSobrenome(request.getParameter("sobrenome"));
        aluno.setTelefone(request.getParameter("telefone"));
        aluno.setCelular(request.getParameter("celular"));
        aluno.setBairro(request.getParameter("bairro"));
        aluno.setRua(request.getParameter("rua"));
        aluno.setCidade(request.getParameter("cidade"));
        aluno.setComplemento(request.getParameter("complemento"));
        //aluno.setFoto();Criar um metodo para isso
        aluno.setNascimento(Date.valueOf(request.getParameter("nascimento")));
        aluno.setDesconto(Integer.parseInt("0"));//todos começam com 0 desconto
        //aluno.setBolsista(getBinario(request.getParameter("bolsista")));
        aluno.setSexo(request.getParameter("sexo").charAt(0));
        //todo aluno inicia como Inativo e fica ativo ao se inscrever em turma
        //aluno.setAtivo(false);
        String msg = "0";
        try {
            SessionHibernate.salvaDados(aluno);
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
                out.println("Objeto aluno criado <br>");
                out.println("<br>Identidade: " + aluno.getIdentidade());
                out.println("<br>Email: " + aluno.getEmail());
                out.println("<br>Nome: " + aluno.getPrimeiroNome());
                out.println("<br>Sobrenome: " + aluno.getSobrenome());
                out.println("<br>Telefone: " + aluno.getTelefone());
                out.println("<br>Celular: " + aluno.getCelular());
                out.println("<br>Bairro: " + aluno.getBairro());
                out.println("<br>Rua: " + aluno.getRua());
                out.println("<br>Cidade: " + aluno.getCidade());
                out.println("<br>Complemento: " + aluno.getComplemento());
                out.println("<br>Nascimento: " + aluno.getNascimento());
                out.println("<br>Desconto: " + aluno.getDesconto());
                out.println("<br>Bolsista: " + aluno.getBolsista());
                out.println("<br>Sexo: " + aluno.getSexo());
                out.println("<br>Ativo: " + aluno.getAtivo());
                out.println("<br>*aluno só fica ativo ao ser cadastrado em turma.");
            }

            out.println("</body>");
            out.println("</html>");
        }

    }

    private boolean getBinario(String a) {
        if (a.equals("1")) {
            return true;
        }
        return false;
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
