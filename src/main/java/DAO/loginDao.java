/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import constructores.login;
import java.sql.*;
import static conexion.conexion.*;
import java.awt.BorderLayout;
import java.util.*;

public class loginDao {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private login Login;

    public int validacionUsuario(login login) throws ClassNotFoundException {
        String sql = "SELECT * FROM usuario WHERE vUsuario=? and vPass=?";
        int registro = 0;

        try {

            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);

            this.ps.setString(1, login.getUsuario());
            this.ps.setString(2, login.getPass());
            this.rs = this.ps.executeQuery();

            while (rs.next()) {
                registro = registro + 1;
                login.setUsuario(rs.getString("vUsuario"));
                login.setPass(rs.getString("vPass"));

            }
            if (registro == 1) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                cerrar(this.rs);
                cerrar(this.ps);
                cerrar(this.conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }
        return 0;
    }

    public String validacionRoles(login login) throws ClassNotFoundException, SQLException {
        String sql = "SELECT * FROM usuario WHERE vUsuario=? and vPass=?";
        String res = null;
        try {

            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);

            this.ps.setString(1, login.getUsuario());
            this.ps.setString(2, login.getPass());
            this.rs = this.ps.executeQuery();

            while (this.rs.next()) {

                int id = this.rs.getInt("idUsuario");
                String usuario = this.rs.getString("vUsuario");
                String pass = this.rs.getString("vPass");
                String correo = this.rs.getString("vCorreo");
                String rol = this.rs.getString("vRol");
                
                this.Login = new login(id, usuario, pass, correo, rol);
                res = Login.getRol();
                return res;
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                cerrar(this.rs);
                cerrar(this.ps);
                cerrar(this.conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }
        return res;
    }
    public void mostrarResultado() throws ClassNotFoundException, SQLException {
        validacionRoles(Login);
        System.out.print(Login);
    }

}
