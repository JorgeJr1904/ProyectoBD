/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static conexion.conexion.cerrar;
import static conexion.conexion.getConexion;
import constructores.Usuarios;
import java.sql.*;
import java.util.*;

/**
 *
 * @author JorgeJr
 */
public class UsuariosDAO {

    private Connection conn = null;
    private ResultSet rs = null;
    private CallableStatement cs = null;
    private PreparedStatement ps = null;
    private Usuarios usuario;

    public List<Usuarios> ListarUsuarios() throws ClassNotFoundException {
        String sql = "{CALL ListarUsuarios}";
        List<Usuarios> Usuarios = new ArrayList<>();

        try {
            this.conn = getConexion();
            this.cs = this.conn.prepareCall(sql);
            this.cs.execute();
            this.rs = this.cs.getResultSet();

            while (rs.next()) {
                int id = this.rs.getInt("idUsuario");
                String Nombreusuario = this.rs.getString("vNombreUsuario");
                String correo = this.rs.getString("vCorreo");
                String rol = this.rs.getString("vNombreRol");

                this.usuario = new Usuarios(id, Nombreusuario, correo, rol);
                Usuarios.add(this.usuario);
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

        return Usuarios;
    }

    public void eliminarUsuario(Usuarios usuarios) throws ClassNotFoundException {
        String sql = "UPDATE usuarios set cEstado = ? WHERE idUsuario = ?;";

        try {
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);

            this.ps.setString(1, "F");
            this.ps.setInt(2, usuarios.getIdUsuario());
            this.ps.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                cerrar(this.ps);
                cerrar(this.conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);

            }
        }
    }
    
        public int agregarUsuario(Usuarios usuarios) throws ClassNotFoundException {
        String sql = "INSERT INTO usuarios (vNombreUsuario, vPass, vCorreo, iUsuarioRol) VALUES (?, ?, ?, ?)";
        int resultado = 0;
        try {
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);

            this.ps.setString(1, usuarios.getUsuario());
            this.ps.setString(2, usuarios.getRol());
            this.ps.setString(3, usuarios.getCorreo());
            this.ps.setInt(4, usuarios.getIdUsuario());
            resultado = this.ps.executeUpdate();
            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                cerrar(this.ps);
                cerrar(this.conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);

            }
        }
        return resultado;
    }
}
