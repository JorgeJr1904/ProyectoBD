/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

/**
 *
 * @author JorgeJr
 */
public class contadores {
    
    private int numeroRecibir;
    private int numeroEnviar;

    public contadores() {
    }
        
    public contadores(int numeroEnviar) {
        this.numeroEnviar = numeroEnviar;
    }

    public contadores(int numeroRecibir, int numeroEnviar) {
        this.numeroRecibir = numeroRecibir;
        this.numeroEnviar = numeroEnviar;
    }

    public int getNumeroRecibir() {
        return this.numeroRecibir;
    }

    public void setNumeroRecibir(int numeroRecibir) {
        this.numeroRecibir = numeroRecibir;
    }

    public int getNumeroEnviar() {
        return this.numeroEnviar;
    }

    public void setNumeroEnviar(int numeroEnviar) {
        this.numeroEnviar = numeroEnviar;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("contadores{numeroRecibir=").append(numeroRecibir);
        sb.append(", numeroEnviar=").append(numeroEnviar);
        sb.append('}');
        return sb.toString();
    }
    
    
    
    
}
