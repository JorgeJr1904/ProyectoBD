/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

/**
 *
 * @author JorgeJr
 */
public class UsuarioRolLogin {
    
    private String usuario, rol;

    public UsuarioRolLogin() {
    }

    public UsuarioRolLogin(String usuario, String rol) {
        this.usuario = usuario;
        this.rol = rol;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
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
        sb.append("UsuarioRolLogin{usuario=").append(usuario);
        sb.append(", rol=").append(rol);
        sb.append('}');
        return sb.toString();
    }
    
    
    
}
