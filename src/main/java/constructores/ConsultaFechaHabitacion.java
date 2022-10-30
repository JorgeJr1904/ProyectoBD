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
public class ConsultaFechaHabitacion {
    
    private String nombrePersona, apellidosPersona, nombreHabitacion;
    private Date fechaReserva;

    public ConsultaFechaHabitacion() {
    }

    public ConsultaFechaHabitacion(Date fechaReserva, String nombrePersona, String apellidosPersona, String nombreHabitacion) {
        this.fechaReserva = fechaReserva;
        this.nombrePersona = nombrePersona;
        this.apellidosPersona = apellidosPersona;
        this.nombreHabitacion = nombreHabitacion;
    }

    public Date getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(Date fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public String getNombrePersona() {
        return nombrePersona;
    }

    public void setNombrePersona(String nombrePersona) {
        this.nombrePersona = nombrePersona;
    }

    public String getApellidosPersona() {
        return apellidosPersona;
    }

    public void setApellidosPersona(String apellidosPersona) {
        this.apellidosPersona = apellidosPersona;
    }

    public String getNombreHabitacion() {
        return nombreHabitacion;
    }

    public void setNombreHabitacion(String nombreHabitacion) {
        this.nombreHabitacion = nombreHabitacion;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ConsultaFechaHabitacion{fechaReserva=").append(fechaReserva);
        sb.append(", nombrePersona=").append(nombrePersona);
        sb.append(", apellidosPersona=").append(apellidosPersona);
        sb.append(", nombreHabitacion=").append(nombreHabitacion);
        sb.append('}');
        return sb.toString();
    }
    
    
    
}
