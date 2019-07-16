/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author guga_
 */
public class CalcadoDAO {

    public static void cadastrarCalcado(CalcadoEstoque tenis) throws ClassNotFoundException, SQLException {

        Connection con = StartConection.getConexao();
        PreparedStatement comando = con.prepareStatement("INSERT INTO  public.\"Calcado\"(descricao, genero, preco, categoria, marca, tamanho,imagem)VALUES (?,?,?,?,?,?,?)");

        comando.setString(1, tenis.getDescricao());
        comando.setString(2, tenis.getGenero());
        comando.setDouble(3, tenis.getPreco());
        comando.setString(4, tenis.getCategoria());
        comando.setString(5, tenis.getMarca());
        comando.setInt(6, tenis.getTamanho());
        comando.setString(7, tenis.getImagem());

        comando.execute();
        con.close();
    }

    static public List<Calcado> listarTenis() throws ClassNotFoundException, SQLException {
        Connection con = StartConection.getConexao();
        PreparedStatement comando = con.prepareStatement("Select * from public.\"Calcado\"");
        ResultSet resultado = comando.executeQuery();

        List<Calcado> todosTenis = new ArrayList<>();
        while (resultado.next()) {
            Calcado t = new Calcado();
            t.setId(resultado.getInt("id"));
            t.setDescricao(resultado.getString("descricao"));
            t.setGenero(resultado.getString("genero"));
            t.setPreco(resultado.getDouble("preco"));
            t.setCategoria(resultado.getString("categoria"));
            t.setMarca(resultado.getString("marca"));
            t.setTamanho(resultado.getInt("tamanho"));

            t.setImagem(resultado.getString("imagem"));
            todosTenis.add(t);

        }
        con.close();
        return todosTenis;
    }

    public static Calcado consultarporId(Calcado tenis) throws ClassNotFoundException, SQLException {
        Connection con = StartConection.getConexao();
        PreparedStatement comando = con.prepareStatement("Select * from public.\"Calcado\" where id=? ");
        comando.setInt(1, tenis.getId());
        ResultSet resultado = comando.executeQuery();

        Calcado t = new Calcado();
        while (resultado.next()) {

            t.setId(resultado.getInt("id"));
            t.setDescricao(resultado.getString("descricao"));
            t.setGenero(resultado.getString("genero"));
            t.setPreco(resultado.getDouble("preco"));
            t.setCategoria(resultado.getString("categoria"));
            t.setMarca(resultado.getString("marca"));
            t.setTamanho(resultado.getInt("tamanho"));
            t.setImagem(resultado.getString("imagem"));

        }
        con.close();
        return t;
    }

    public static List<Calcado> filtrar(String filtro, String colunafiltro) throws ClassNotFoundException, SQLException {
        Connection con = StartConection.getConexao();
        PreparedStatement comando = con.prepareStatement("Select * from public.\"Calcado\" where " + colunafiltro + "=? ");
        comando.setString(1, filtro);
        ResultSet resultado = comando.executeQuery();

        List<Calcado> todosTenis = new ArrayList<>();
        while (resultado.next()) {
            Calcado t = new Calcado();
            t.setId(resultado.getInt("id"));
            t.setDescricao(resultado.getString("descricao"));
            t.setGenero(resultado.getString("genero"));
            t.setPreco(resultado.getDouble("preco"));
            t.setCategoria(resultado.getString("categoria"));
            t.setMarca(resultado.getString("marca"));
            t.setTamanho(resultado.getInt("tamanho"));

            t.setImagem(resultado.getString("imagem"));
            todosTenis.add(t);
        }
        con.close();
        return todosTenis;
    }

    public static void excluirCalcado(int id) throws ClassNotFoundException, SQLException {
        Connection con = StartConection.getConexao();
        PreparedStatement comando = con.prepareStatement("delete from public.\"Calcado\" where id=?");
        comando.setInt(1, id);

        comando.execute();
        con.close();

    }

    public static void editarCalcado(Calcado calcado) throws ClassNotFoundException, SQLException {
        Connection con = StartConection.getConexao();
        PreparedStatement comando = con.prepareStatement("UPDATE public.\"Calcado\""
                + "SET descricao = ? ,\n"
                + "genero=? ,\n"
                + "preco=? ,\n"
                + "categoria=? ,\n"
                + "marca=? ,\n"
                + "tamanho=? ,\n"
                + "imagem=? \n"
                + "where id=?;");

        comando.setString(1, calcado.getDescricao());
        comando.setString(2, calcado.getGenero());
        comando.setDouble(3, calcado.getPreco());
        comando.setString(4, calcado.getCategoria());
        comando.setString(5, calcado.getMarca());
        comando.setInt(6, calcado.getTamanho());
        comando.setString(7, calcado.getImagem());

        comando.setInt(8, calcado.getId());

        comando.execute();
        con.close();
    }

    public static List<String> filtrarDisitntos(String colunafiltro) throws ClassNotFoundException, SQLException {
        Connection con = StartConection.getConexao();
        PreparedStatement comando = con.prepareStatement("Select distinct " + colunafiltro + " from public.\"Calcado\"");
        ResultSet resultado = comando.executeQuery();

        List<String> tuplas = new ArrayList<>();
        while (resultado.next()) {

            tuplas.add(resultado.getString(colunafiltro));
        }
        con.close();
        return tuplas;

    }


}
