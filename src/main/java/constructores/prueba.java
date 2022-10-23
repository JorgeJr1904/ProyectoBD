/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

/**
 *
 * @author JorgeJr
 */
public class prueba {
    
    private int idUsuario, idrol;
    private String nombreUsuario, correo, pass, rol;

    public prueba() {
    }

    public prueba(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public prueba(String nombreUsuario, String correo, String rol) {
        this.nombreUsuario = nombreUsuario;
        this.correo = correo;
        this.rol = rol;
    }

    public prueba(int idUsuario, int idrol, String nombreUsuario, String correo, String pass) {
        this.idUsuario = idUsuario;
        this.idrol = idrol;
        this.nombreUsuario = nombreUsuario;
        this.correo = correo;
        this.pass = pass;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdrol() {
        return idrol;
    }

    public void setIdrol(int idrol) {
        this.idrol = idrol;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("prueba{idUsuario=").append(idUsuario);
        sb.append(", idrol=").append(idrol);
        sb.append(", nombreUsuario=").append(nombreUsuario);
        sb.append(", correo=").append(correo);
        sb.append(", pass=").append(pass);
        sb.append(", rol=").append(rol);
        sb.append('}');
        return sb.toString();
    }
    
    
    
}
