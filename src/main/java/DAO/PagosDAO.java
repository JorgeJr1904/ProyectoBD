package DAO;

import static conexion.conexion.*;
import constructores.Pagos;
import constructores.Reservaciones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author JorgeJr
 */
public class PagosDAO {
    
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private Reservaciones reservacion;
    
    public int agregarPago(Pagos Pagos) throws ClassNotFoundException{
        String sql= "INSERT INTO Pagos (vNombreFactura, vDireccionFactura, vTelefonoFactura, iTipoPago, iNumeroTarjeta, iReservacion) VALUES (?,?,?,?,?,?)";
        
        int resultado = 0;
        try {
            this.conn = getConexion();
            this.ps = this.conn.prepareStatement(sql);
            
            this.ps.setString(1, Pagos.getVnombreFactura());
            this.ps.setString(2, Pagos.getvDireccionFactura());
            this.ps.setString(3, Pagos.getvTelefonoFactura());
            this.ps.setInt(4, Pagos.getiTipoPago());
            this.ps.setInt(5, Pagos.getiNumeroTarjeta());
            this.ps.setInt(6, Pagos.getiReservacion());
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
    
}
