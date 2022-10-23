/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static conexion.conexion.*;
import constructores.prueba;
import java.sql.*;
import java.util.*;

/**
 *
 * @author JorgeJr
 */
public class pruebaDAO {

    private Connection conn = null;
    private ResultSet rs = null;
    private CallableStatement cs = null;
    private prueba prueba1;

    public List<prueba> seleccionar() throws ClassNotFoundException {
        String sql = "{CALL listarUsuario}";
        List<prueba> prueba = new ArrayList<>();

        try {
            this.conn = getConexion();
            this.cs = this.conn.prepareCall(sql);
            this.cs.execute();
            this.rs = this.cs.getResultSet();

            while (rs.next()) {
                String usuario = this.rs.getString("vNombreUsuario");
                String correo = this.rs.getString("vCorreo");
                String rol = this.rs.getString("vNombreRol");
                
                this.prueba1 = new prueba(usuario, correo, rol);
                prueba.add(this.prueba1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                cerrar(this.rs);
                cs.close();
                cerrar(this.conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }

        return prueba;
    }

}
