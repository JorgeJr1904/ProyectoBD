/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

import java.util.Date;

/**
 *
 * @author JorgeJr
 */
public class ConsultaClienteFecha {
    
    private Date fechaReserva;
    private String nombresPersona, apellidosPersona, nombrePago;

    public ConsultaClienteFecha() {
    }

    public ConsultaClienteFecha(Date fechaReserva, String nombresPersona, String apellidosPersona, String nombrePago) {
        this.fechaReserva = fechaReserva;
        this.nombresPersona = nombresPersona;
        this.apellidosPersona = apellidosPersona;
        this.nombrePago = nombrePago;
    }

    public Date getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(Date fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public String getNombresPersona() {
        return nombresPersona;
    }

    public void setNombresPersona(String nombresPersona) {
        this.nombresPersona = nombresPersona;
    }

    public String getApellidosPersona() {
        return apellidosPersona;
    }

    public void setApellidosPersona(String apellidosPersona) {
        this.apellidosPersona = apellidosPersona;
    }

    public String getNombrePago() {
        return nombrePago;
    }

    public void setNombrePago(String nombrePago) {
        this.nombrePago = nombrePago;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ConsultaClienteFecha{fechaReserva=").append(fechaReserva);
        sb.append(", nombresPersona=").append(nombresPersona);
        sb.append(", apellidosPersona=").append(apellidosPersona);
        sb.append(", nombrePago=").append(nombrePago);
        sb.append('}');
        return sb.toString();
    }
    
    
    
}
