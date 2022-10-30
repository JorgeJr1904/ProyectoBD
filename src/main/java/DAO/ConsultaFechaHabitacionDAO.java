/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static conexion.conexion.*;
import constructores.ConsultaFechaHabitacion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JorgeJr
 */
public class ConsultaFechaHabitacionDAO {
    
    private Connection conn = null;
    private ResultSet rs = null;
    private CallableStatement cs = null;
    private PreparedStatement ps = null;
    private ConsultaFechaHabitacion cfh;
    
    public List<ConsultaFechaHabitacion> ListarCFH() throws ClassNotFoundException {
        String sql = "{CALL consultaFechaHabitacion}";
        List<ConsultaFechaHabitacion> Consulta = new ArrayList<>();

        try {
            this.conn = getConexion();
            this.cs = this.conn.prepareCall(sql);
            this.cs.execute();
            this.rs = this.cs.getResultSet();

            while (rs.next()) {
                Date fechaReserva  = this.rs.getDate("dFechaReserva");
                String nombrePersona = this.rs.getString("vNombresPersona");
                String apellidosPersona = this.rs.getString("vApellidosPersona");
                String nombreHabitacion = this.rs.getString("vNombreHabitacion");

                this.cfh = new ConsultaFechaHabitacion(fechaReserva, nombrePersona, apellidosPersona, nombreHabitacion);
                Consulta.add(this.cfh);
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

        return Consulta;
    }
    
}
