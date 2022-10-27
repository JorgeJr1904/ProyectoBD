/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

import java.io.*;

/**
 *
 * @author JorgeJr
 */
public class Hoteles {
    private String nombreHabitacion;
    private int idHabitacion;
    private int precio;
    private int noHabitaciones;
    byte[] imagen;

    public Hoteles() {
    }

    public Hoteles(String nombreHabitacion, int precio, int noHabitaciones, byte[] imagen) {
        this.nombreHabitacion = nombreHabitacion;
        this.precio = precio;
        this.noHabitaciones = noHabitaciones;
        this.imagen = imagen;
    }

    public Hoteles(String nombreHabitacion, int idHabitacion, int precio, int noHabitaciones, byte[] imagen) {
        this.nombreHabitacion = nombreHabitacion;
        this.idHabitacion = idHabitacion;
        this.precio = precio;
        this.noHabitaciones = noHabitaciones;
        this.imagen = imagen;
    }

    public String getNombreHabitacion() {
        return nombreHabitacion;
    }

    public void setNombreHabitacion(String nombreHabitacion) {
        this.nombreHabitacion = nombreHabitacion;
    }

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getNoHabitaciones() {
        return noHabitaciones;
    }

    public void setNoHabitaciones(int noHabitaciones) {
        this.noHabitaciones = noHabitaciones;
    }

    public byte[] getImagen() {
        return imagen;
    }

    public void setImagen(byte[] imagen) {
        this.imagen = imagen;
    }
     
}
