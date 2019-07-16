/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.Atendente;
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
import Model.CalcadoDAO;
import Model.Calcado;
import Model.CalcadoEstoque;
import Model.Gerente;
import Model.Pessoa;
import Model.TipoUsuario;

/**
 *
 * @author guga_
 */
@WebServlet(urlPatterns = {"/TenisServlet", "/cadastrarCalcado", "/confirmarCadastro", "/consultarProdutos", "/consultarGerente", "/excluirProdutos", "/iniciaredicao", "/editarcalcados", "/filtrar"})
public class CalcadoServlet extends HttpServlet {

    public static int enumerator;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String uri = request.getRequestURI();

            if (uri.equals(request.getContextPath() + "/consultarProdutos")) {
                Atendente atendente = new Atendente();
                atendente.consultar(request, response);
            } else if (uri.equals(request.getContextPath() + "/consultarGerente")) {
                Gerente gerente = new Gerente();
                gerente.consultar(request, response);
            } else if (uri.equals(request.getContextPath() + "/excluirProdutos")) {
                excluir(request, response);

            } else if (uri.equals(request.getContextPath() + "/iniciaredicao")) {
                iniciarEdicao(request, response);
            } else if (uri.equals(request.getContextPath() + "/filtrar")) {
                filtrarConsulta(request, response);
            } else {
                response.sendRedirect("404.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("404.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String uri = request.getRequestURI();
            if (uri.equals(request.getContextPath() + "/cadastrarCalcado")) {
                enumerator = Integer.parseInt(request.getParameter("enumerator"));
                response.sendRedirect("CadastrarCalcado.jsp");
            } else if (uri.equals(request.getContextPath() + "/editarcalcados")) {
                editarcalcados(request, response);
            } else if (uri.equals(request.getContextPath() + "/confirmarCadastro")) {
                TipoUsuario tipoUsuario = TipoUsuario.values()[enumerator];
                Pessoa usuario = tipoUsuario.obterUsuario();
                usuario.cadastrar(request, response);

            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("404.jsp");
        }
    }

    private void excluir(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        CalcadoDAO.excluirCalcado(id);
        response.sendRedirect("Sucesso.jsp");
    }

    private void iniciarEdicao(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        Calcado p = new Calcado();
        p.setId(id);
        p = CalcadoDAO.consultarporId(p);
        request.setAttribute("calcado", p);
        request.getRequestDispatcher("editarCalcado.jsp").forward(request, response);

    }

    private void editarcalcados(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException, ServletException {
        Calcado t = new Calcado();
        t.setId(Integer.parseInt(request.getParameter("id")));
        t.setDescricao(request.getParameter("descricao"));
        t.setGenero(request.getParameter("genero"));
        t.setPreco(Double.parseDouble(request.getParameter("preco")));
        t.setCategoria(request.getParameter("categoria"));
        t.setMarca(request.getParameter("marca"));
        t.setTamanho(Integer.parseInt(request.getParameter("tamanho")));
        t.setImagem(request.getParameter("imagem"));

        CalcadoDAO.editarCalcado(t);
        response.sendRedirect("Sucesso.jsp");

    }

    public void filtrarConsulta(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        List<Calcado> todosTenisfiltrados = new ArrayList<>();

        String filtro = request.getParameter("filtro");
        String colunafiltro = request.getParameter("coluna");
        todosTenisfiltrados = CalcadoDAO.filtrar(filtro, colunafiltro);

        List<String> todasCategorias = new ArrayList<>();
        List<String> todasMarcas = new ArrayList<>();
        List<String> todosGeneros = new ArrayList<>();

        todasCategorias = CalcadoDAO.filtrarDisitntos("categoria");
        todasMarcas = CalcadoDAO.filtrarDisitntos("marca");
        todosGeneros = CalcadoDAO.filtrarDisitntos("genero");

        request.setAttribute("todosCategorias", todasCategorias);
        request.setAttribute("todosMarcas", todasMarcas);
        request.setAttribute("todosGeneros", todosGeneros);
        request.setAttribute("todos", todosTenisfiltrados);
        request.getRequestDispatcher("listaProdutosGerente.jsp").forward(request, response);
        //List<String> todosFiltros = new ArrayList<>();
        //todosFiltros = CalcadoDAO.filtrarDisitntos(colunafiltro);
        // request.setAttribute("colunasBox", todosFiltros);

    }
}
