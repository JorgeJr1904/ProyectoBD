/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

/**
 *
 * @author JorgeJr
 */
public class accionUsuarios{

    String usuario, oldPass, newPass, accion, oldEstado, newEstado;

    public accionUsuarios(String usuario, String oldPass, String newPass, String accion, String oldEstado, String newEstado) {
        this.usuario = usuario;
        this.oldPass = oldPass;
        this.newPass = newPass;
        this.accion = accion;
        this.oldEstado = oldEstado;
        this.newEstado = newEstado;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getOldPass() {
        return oldPass;
    }

    public void setOldPass(String oldPass) {
        this.oldPass = oldPass;
    }

    public String getNewPass() {
        return newPass;
    }

    public void setNewPass(String newPass) {
        this.newPass = newPass;
    }

    public String getAccion() {
        return accion;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }

    public String getOldEstado() {
        return oldEstado;
    }

    public void setOldEstado(String oldEstado) {
        this.oldEstado = oldEstado;
    }

    public String getNewEstado() {
        return newEstado;
    }

    public void setNewEstado(String newEstado) {
        this.newEstado = newEstado;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("accionUsuarios{usuario=").append(usuario);
        sb.append(", oldPass=").append(oldPass);
        sb.append(", newPass=").append(newPass);
        sb.append(", accion=").append(accion);
        sb.append(", oldEstado=").append(oldEstado);
        sb.append(", newEstado=").append(newEstado);
        sb.append('}');
        return sb.toString();
    }   
}
