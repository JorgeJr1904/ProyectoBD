/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static conexion.conexion.*;
import constructores.ConsultaClienteFecha;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JorgeJr
 */
public class ConsultaClienteFechaDAO {
    
    private Connection conn = null;
    private ResultSet rs = null;
    private CallableStatement cs = null;
    private PreparedStatement ps = null;
    private ConsultaClienteFecha ccf;
    
    public List<ConsultaClienteFecha> ListarCCF() throws ClassNotFoundException {
        String sql = "{CALL consultaClienteFecha}";
        List<ConsultaClienteFecha> Consulta = new ArrayList<>();

        try {
            this.conn = getConexion();
            this.cs = this.conn.prepareCall(sql);
            this.cs.execute();
            this.rs = this.cs.getResultSet();

            while (rs.next()) {
                Date fechaReserva  = this.rs.getDate("dFechaReserva");
                String nombrePersona = this.rs.getString("vNombresPersona");
                String apellidosPersona = this.rs.getString("vApellidosPersona");
                String nombrePago = this.rs.getString("vNombrePago");

                this.ccf = new ConsultaClienteFecha(fechaReserva, nombrePersona, apellidosPersona, nombrePago);
                Consulta.add(this.ccf);
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
