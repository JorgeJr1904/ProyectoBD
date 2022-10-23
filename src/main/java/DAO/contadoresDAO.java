/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.*;
import static conexion.conexion.*;
import constructores.contadores;

public class contadoresDAO {

    private Connection conn = null;
    private CallableStatement cs = null;
    private ResultSet rs = null;
    private contadores contador = new contadores();

    public int contadorUsuarios(contadores contadores) throws ClassNotFoundException {
        String sql = "{CALL contadorUsuarios(?,?)}";
        int contadorfinal= 0;
        try {

            this.conn = getConexion();
            this.cs = this.conn.prepareCall(sql);

            this.cs.setInt(1, this.contador.getNumeroEnviar());
            this.cs.registerOutParameter(2, java.sql.Types.INTEGER);
            this.cs.execute();

                contadorfinal = this.cs.getInt(2);
                return contadorfinal;
            
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
        return contadorfinal;
    }

}
