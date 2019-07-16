/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alunocmc
 */
public interface GeneralFunctions {

    public void consultar(HttpServletRequest request, HttpServletResponse response)throws SQLException, ClassNotFoundException, ServletException, IOException;
}
