    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static conexion.conexion.*;
import constructores.datosPersona;
import java.sql.*;


/**
 *
 * @author JorgeJr
 */
public class datosPersonaDAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private datosPersona dp;
    
    public int agregarDatosPersona(datosPersona datospersona) throws ClassNotFoundException{
        String sql= "INSERT INTO datos_persona (vNombresPersona, vApellidosPersona, iEdad, vSexo, iTipoIdentificacion, vNoIdentificacion, vDireccionPersona, vTelefonoPersona, "
                + "vPaisResidencia, vUsuarioReservacion) VALUES (?,?,?,?,?,?,?,?,?,?)";
        
        int resultado = 0;
        try {
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);
            
            this.ps.setString(1, datospersona.getvNombresPersona());
            this.ps.setString(2, datospersona.getvApellidosPersona());
            this.ps.setInt(3, datospersona.getiEdad());
            this.ps.setString(4, datospersona.getvSexo());
            this.ps.setInt(5, datospersona.getTipoIdentificacion());
            this.ps.setString(6, datospersona.getvNoIdentificacion());
            this.ps.setString(7, datospersona.getvDireccionPersona());
            this.ps.setString(8, datospersona.getvTelefonoPersona());
            this.ps.setString(9, datospersona.getvPaisResidencia());
            this.ps.setString(10, datospersona.getvUsuarioReservacion());
            resultado = this.ps.executeUpdate();
            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }finally{
            try {
                
                cerrar(this.ps);
                cerrar(this.conn);
                
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        
        return resultado;
          
    }
    
    /**
     *
     * @return
     * @throws ClassNotFoundException
     */
    public int ultimoIdDatosPersona() throws ClassNotFoundException{
        String sql= "SELECT idDatosPersona FROM datos_persona ORDER BY idDatosPersona DESC LIMIT 1";
        int ciclos = 0;
        int idDatosPersona = 0;
        int id = 0;
        try {
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);
            this.rs = this.ps.executeQuery();
            
            while (this.rs.next()) {                
                id = this.rs.getInt("idDatosPersona");
                ciclos = ciclos+1;
                
            }
            if (ciclos == 1) {
                this.dp = new datosPersona(id);
                idDatosPersona = this.dp.getIdDatosPersona();
            }else{
                idDatosPersona = 0;
            }
                
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }finally{
            try {
                cerrar(this.conn);
                cerrar(this.ps);
                cerrar(this.rs);
                
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        
        return idDatosPersona;
          
    }
    
}
