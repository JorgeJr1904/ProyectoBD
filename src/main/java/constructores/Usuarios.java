/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

/**
 *
 * @author JorgeJr
 */
public class Usuarios {

    private int idUsuario;    
    private String usuario;
    private String pass;
    private String correo;
    private String rol;

    public Usuarios() {
    }

    public Usuarios(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Usuarios(String usuario, String correo, String rol) {
        this.usuario = usuario;
        this.correo = correo;
        this.rol = rol;
    }

    public Usuarios(int idUsuario, String usuario, String correo, String rol) {
        this.idUsuario = idUsuario;
        this.usuario = usuario;
        this.correo = correo;
        this.rol = rol;
    }
    
    
    public Usuarios(int idUsuario, String usuario, String pass, String correo, String rol) {
        this.idUsuario = idUsuario;
        this.usuario = usuario;
        this.pass = pass;
        this.correo = correo;
        this.rol = rol;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
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
        sb.append("Usuarios{idUsuario=").append(idUsuario);
        sb.append(", usuario=").append(usuario);
        sb.append(", pass=").append(pass);
        sb.append(", correo=").append(correo);
        sb.append(", rol=").append(rol);
        sb.append('}');
        return sb.toString();
    }

}
