/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author JorgeJr
 */
public class conexion {
        private static final String URL = "jdbc:mysql://localhost/prueba_proyecto_bd?serverTmezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "Jorgeandres_1904";
    
    public static Connection getConexion() throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL,USER,PASSWORD);  
    }
    
    public static void cerrar(ResultSet rs) throws SQLException{
        rs.close();       
    }
    
    public static void cerrar(PreparedStatement ps) throws SQLException{
        ps.close();       
    }
    
    public static void cerrar(Connection conn) throws SQLException{
        conn.close();       
    }
}
