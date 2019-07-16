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
 * @author alunocmc
 */
public class FuncionarioDAO {

        static public List<Atendente> listarAtendentes() throws ClassNotFoundException, SQLException {
        Connection con = StartConection.getConexao();
        PreparedStatement comando = con.prepareStatement("Select * from public.\"Atendente\"");
        ResultSet resultado = comando.executeQuery();

        List<Atendente> todosAtendentes = new ArrayList<>();
        while (resultado.next()) {
            Atendente atend = new Atendente();

            atend = FuncionarioBuilder.novoFuncionarioBuilder()
                    .comId(resultado.getInt("id"))
                    .comNome(resultado.getString("nome"))
                    .comCarteira(resultado.getString("car_trabalho"))
                    .comCpf(resultado.getString("cpf"))
                    .comRg(resultado.getString("rg"))
                    .constroi();
         
            todosAtendentes.add(atend);

        }
        con.close();
        return todosAtendentes;
    }

}
