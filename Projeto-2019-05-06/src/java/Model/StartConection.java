/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class StartConection {
     public static Connection getConexao() throws ClassNotFoundException,SQLException{
        Class.forName("org.postgresql.Driver");
        //Possibly Different password and user when using other computer!!
        Connection con =DriverManager.getConnection("jdbc:postgresql://localhost:5432/BigFoot_Project","postgres","postgres");
        
        return con;
     }
}