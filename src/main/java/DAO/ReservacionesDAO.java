/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static conexion.conexion.cerrar;
import static conexion.conexion.getConexion;
import constructores.Reservaciones;
import java.sql.*;

/**
 *
 * @author JorgeJr
 */
public class ReservacionesDAO {
    
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private Reservaciones reservacion;
    
    public int agregarReservacion(Reservaciones reservaciones) throws ClassNotFoundException{
        String sql= "INSERT INTO reservaciones (iNumHabitaciones, dFechaIngreso, dFechaSalida, iDatosPersona, iHabitacion) VALUES (?,?,?,?,?)";
        
        int resultado = 0;
        try {
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);
            
            this.ps.setInt(1, reservaciones.getInumHabitaciones());
            this.ps.setString(2, reservaciones.getDfechaIngreso());
            this.ps.setString(3, reservaciones.getDfechaSalida());
            this.ps.setInt(4, reservaciones.getIdatosPersona());
            this.ps.setInt(5, reservaciones.getIhabitacion());
            resultado = this.ps.executeUpdate();
            
        }catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }finally{
            try {
                cerrar(this.conn);
                cerrar(this.ps);
                
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return resultado;   
        
    }
    
    public int ultimoIdReservacion() throws ClassNotFoundException{
        String sql= "SELECT idReservacion FROM reservaciones ORDER BY idReservacion DESC LIMIT 1";
        int ciclos = 0;
        int idDatosReservacion = 0;
        int id = 0;
        try {
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);
            this.rs = this.ps.executeQuery();
            
            while (this.rs.next()) {                
                id = this.rs.getInt("idReservacion");
                ciclos = ciclos+1;
            }
            if (ciclos == 1) {
                this.reservacion = new Reservaciones(id);
                idDatosReservacion = this.reservacion.getIdReservacion();
            }else{
                idDatosReservacion = 0;
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
        
        
        return idDatosReservacion;
          
    }
    
}
