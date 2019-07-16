/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author guga_
 */
public class Atendente extends Pessoa implements GeneralFunctions {

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void consultar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        List<Calcado> todosTenis = new ArrayList<>();

        todosTenis = CalcadoDAO.listarTenis();
        List<String> todasCategorias = new ArrayList<>();
        List<String> todasMarcas = new ArrayList<>();
        List<String> todosGeneros = new ArrayList<>();

        todasCategorias = CalcadoDAO.filtrarDisitntos("categoria");
        todasMarcas = CalcadoDAO.filtrarDisitntos("marca");
        todosGeneros = CalcadoDAO.filtrarDisitntos("genero");

        request.setAttribute("todos", todosTenis);
        request.setAttribute("todosCategorias", todasCategorias);
        request.setAttribute("todosMarcas", todasMarcas);
        request.setAttribute("todosGeneros", todosGeneros);

        request.getRequestDispatcher("listaProdutos.jsp").forward(request, response);

    }

    @Override
    public void cadastrar(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
        Calcado t = new CalcadoEstoque();
        t.setDescricao(request.getParameter("descricao"));
        t.setGenero(request.getParameter("genero"));
        t.setPreco(Double.parseDouble(request.getParameter("preco")));
        t.setCategoria(request.getParameter("categoria"));
        t.setMarca(request.getParameter("marca"));
        t.setTamanho(Integer.parseInt(request.getParameter("tamanho")));
        t.setImagem(request.getParameter("imagem"));
        //Add Campos Especificos de Calcado Estoque
        CalcadoDAO.cadastrarCalcado((CalcadoEstoque) t);

        response.sendRedirect("Sucesso.jsp");

    }
}
