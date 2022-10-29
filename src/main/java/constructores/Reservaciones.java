/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

/**
 *
 * @author JorgeJr
 */
public class Reservaciones {
    
    private int idReservacion, ihabitacion, inumHabitaciones, idatosPersona;
    private String dfechaReserva, dfechaIngreso, dfechaSalida;

    public Reservaciones() {
    }

    public Reservaciones(int idReservacion) {
        this.idReservacion = idReservacion;
    }
    
    
    
    public Reservaciones(int ihabitacion, int inumHabitaciones, int idatosPersona, String dfechaIngreso, String dfechaSalida) {
        this.ihabitacion = ihabitacion;
        this.inumHabitaciones = inumHabitaciones;
        this.idatosPersona = idatosPersona;
        this.dfechaIngreso = dfechaIngreso;
        this.dfechaSalida = dfechaSalida;
    }

    public Reservaciones(int idReservacion, int ihabitacion, int inumHabitaciones, int idatosPersona, String dfechaReserva, String dfechaIngreso, String dfechaSalida) {
        this.idReservacion = idReservacion;
        this.ihabitacion = ihabitacion;
        this.inumHabitaciones = inumHabitaciones;
        this.idatosPersona = idatosPersona;
        this.dfechaReserva = dfechaReserva;
        this.dfechaIngreso = dfechaIngreso;
        this.dfechaSalida = dfechaSalida;
    }

    public int getIdReservacion() {
        return idReservacion;
    }

    public void setIdReservacion(int idReservacion) {
        this.idReservacion = idReservacion;
    }

    public int getIhabitacion() {
        return ihabitacion;
    }

    public void setIhabitacion(int ihabitacion) {
        this.ihabitacion = ihabitacion;
    }

    public int getInumHabitaciones() {
        return inumHabitaciones;
    }

    public void setInumHabitaciones(int inumHabitaciones) {
        this.inumHabitaciones = inumHabitaciones;
    }

    public int getIdatosPersona() {
        return idatosPersona;
    }

    public void setIdatosPersona(int idatosPersona) {
        this.idatosPersona = idatosPersona;
    }

    public String getDfechaReserva() {
        return dfechaReserva;
    }

    public void setDfechaReserva(String dfechaReserva) {
        this.dfechaReserva = dfechaReserva;
    }

    public String getDfechaIngreso() {
        return dfechaIngreso;
    }

    public void setDfechaIngreso(String dfechaIngreso) {
        this.dfechaIngreso = dfechaIngreso;
    }

    public String getDfechaSalida() {
        return dfechaSalida;
    }

    public void setDfechaSalida(String dfechaSalida) {
        this.dfechaSalida = dfechaSalida;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Reservaciones{idReservacion=").append(idReservacion);
        sb.append(", ihabitacion=").append(ihabitacion);
        sb.append(", inumHabitaciones=").append(inumHabitaciones);
        sb.append(", idatosPersona=").append(idatosPersona);
        sb.append(", dfechaReserva=").append(dfechaReserva);
        sb.append(", dfechaIngreso=").append(dfechaIngreso);
        sb.append(", dfechaSalida=").append(dfechaSalida);
        sb.append('}');
        return sb.toString();
    }
    
    
    
}
