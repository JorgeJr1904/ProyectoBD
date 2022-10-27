/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static conexion.conexion.*;
import constructores.Hoteles;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.annotation.MultipartConfig;

/**
 *
 * @author JorgeJr
 */
@MultipartConfig
public class HotelesDAO {
    
    Connection conn = null;
    private CallableStatement cs = null;
    private ResultSet rs = null;
    private Hoteles hotel;
    
    
    public void insertarImagen (Hoteles hoteles) throws ClassNotFoundException{
    String sql = "{CALL insertaHabitacion(?, ?, ?, ?)}";
    try {

            this.conn = getConexion();
            this.cs = this.conn.prepareCall(sql);

            this.cs.setInt(1, hoteles.getPrecio());
            this.cs.setString(2, hoteles.getNombreHabitacion());
            this.cs.setInt(3, hoteles.getNoHabitaciones());
            this.cs.setBytes(4, hoteles.getImagen());

            this.cs.execute();
            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                this.cs.close();
                cerrar(this.conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }
    }
    
    public List<Hoteles> seleccionar() throws ClassNotFoundException {
        String sql = "{CALL HabitacionesDisponibles}";
        List<Hoteles> hoteles = new ArrayList<>();

        try {
            this.conn = getConexion();
            this.cs = this.conn.prepareCall(sql);
            this.cs.execute();
            this.rs = this.cs.getResultSet();

            while (rs.next()) {
                String nombreHabitacion = this.rs.getString("vNombreHabitacion");
                int precio = this.rs.getInt("iPrecio");
                byte[] imagen = this.rs.getBytes("imgImagen1");
                int disponibilidad = this.rs.getInt("iNoDisponibleHabitaciones");
                int id = this.rs.getInt("idHabitacion");
                
                this.hotel = new Hoteles(nombreHabitacion, id, precio,disponibilidad,imagen);
                hoteles.add(this.hotel);
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

        return hoteles;
    }
    
}
