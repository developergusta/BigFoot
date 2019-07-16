/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.Gerente;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alunocmc
 */
@WebServlet(urlPatterns = {"/logar", "/consultarfunc"})
public class FuncionarioServlet extends HttpServlet {

//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String uri = request.getRequestURI();
            if (uri.equals(request.getContextPath() + "/logar")) {
                logarFuncionario(request, response);
            } else if (uri.equals(request.getContextPath() + "/consultarfunc")) {
                Gerente gerente = new Gerente();
                gerente.consultarFuncionario(request, response);
            }
        } catch (Exception e) {
            response.sendRedirect("Error.jsp");
        }

    }

    private void logarFuncionario(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        if (login.equals("admin") && senha.equals("admin")) {
            response.sendRedirect("GerenteHome.jsp");
        } else if (login.equals("func") && senha.equals("func")) {
            response.sendRedirect("AtendHome.jsp");
        }
    }
}
