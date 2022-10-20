/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexion;

import java.sql.SQLException;

/**
 *
 * @author JorgeJr
 */
public class Main {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        conexion.getConexion();
        System.out.println("Conexion Exitosa");
    }
}
