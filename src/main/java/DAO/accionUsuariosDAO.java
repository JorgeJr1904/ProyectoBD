/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static conexion.conexion.cerrar;
import static conexion.conexion.getConexion;
import constructores.Usuarios;
import constructores.accionUsuarios;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JorgeJr
 */
public class accionUsuariosDAO {
    
    private Connection conn = null;
    private ResultSet rs = null;
    private CallableStatement cs = null;
    private PreparedStatement ps = null;
    private accionUsuarios accion;
    
    public List<accionUsuarios> listarAcciones() throws ClassNotFoundException{
        String script = "{CALL modificacionesUsuario}";
        List<accionUsuarios> Accion = new ArrayList<>();
        
        try {
            this.conn = getConexion();
            this.cs = this.conn.prepareCall(script);
            this.cs.execute();
            this.rs = this.cs.getResultSet();
            
            while (rs.next()) {                
                String usuario = this.rs.getString("vNombreUsuario");
                String oldPass = this.rs.getString("vOldPass");
                String newPass = this.rs.getString("vNewPass");
                String accion = this.rs.getString("vAccion");
                String oldEstado = this.rs.getString("cOldEstado");
                String newEstado = this.rs.getString("cNewEstado");
                
                this.accion = new accionUsuarios(usuario, oldPass, newPass, accion, oldEstado, newEstado);
                Accion.add(this.accion);
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
        return Accion;
    }
    
}
