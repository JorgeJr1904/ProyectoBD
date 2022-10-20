/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

/**
 *
 * @author JorgeJr
 */
public class login {
    
    private String usuario;
    private String pass;

    public login() {
    }

    public login(String usuario, String pass) {
        this.usuario = usuario;
        this.pass = pass;
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

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("login{usuario=").append(usuario);
        sb.append(", pass=").append(pass);
        sb.append('}');
        return sb.toString();
    }
    
    
}
