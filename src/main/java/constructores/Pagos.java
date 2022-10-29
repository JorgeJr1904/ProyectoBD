/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

/**
 *
 * @author JorgeJr
 */
public class Pagos {
    
    private int idPagos, iTipoPago, iReservacion, iNumeroTarjeta;
    private String vnombreFactura, vDireccionFactura, vTelefonoFactura;

    public Pagos() {
    }

    public Pagos(int iTipoPago, int iReservacion, int iNumeroTarjeta, String vnombreFactura, String vDireccionFactura, String vTelefonoFactura) {
        this.iTipoPago = iTipoPago;
        this.iReservacion = iReservacion;
        this.iNumeroTarjeta = iNumeroTarjeta;
        this.vnombreFactura = vnombreFactura;
        this.vDireccionFactura = vDireccionFactura;
        this.vTelefonoFactura = vTelefonoFactura;
    }

    public Pagos(int iTipoPago, int iReservacion, String vnombreFactura, String vDireccionFactura, String vTelefonoFactura) {
        this.iTipoPago = iTipoPago;
        this.iReservacion = iReservacion;
        this.vnombreFactura = vnombreFactura;
        this.vDireccionFactura = vDireccionFactura;
        this.vTelefonoFactura = vTelefonoFactura;
    }
    

    public Pagos(int idPagos, int iTipoPago, int iReservacion, int iNumeroTarjeta, String vnombreFactura, String vDireccionFactura, String vTelefonoFactura) {
        this.idPagos = idPagos;
        this.iTipoPago = iTipoPago;
        this.iReservacion = iReservacion;
        this.iNumeroTarjeta = iNumeroTarjeta;
        this.vnombreFactura = vnombreFactura;
        this.vDireccionFactura = vDireccionFactura;
        this.vTelefonoFactura = vTelefonoFactura;
    }

    public int getIdPagos() {
        return idPagos;
    }

    public void setIdPagos(int idPagos) {
        this.idPagos = idPagos;
    }

    public int getiTipoPago() {
        return iTipoPago;
    }

    public void setiTipoPago(int iTipoPago) {
        this.iTipoPago = iTipoPago;
    }

    public int getiReservacion() {
        return iReservacion;
    }

    public void setiReservacion(int iReservacion) {
        this.iReservacion = iReservacion;
    }

    public int getiNumeroTarjeta() {
        return iNumeroTarjeta;
    }

    public void setiNumeroTarjeta(int iNumeroTarjeta) {
        this.iNumeroTarjeta = iNumeroTarjeta;
    }

    public String getVnombreFactura() {
        return vnombreFactura;
    }

    public void setVnombreFactura(String vnombreFactura) {
        this.vnombreFactura = vnombreFactura;
    }

    public String getvDireccionFactura() {
        return vDireccionFactura;
    }

    public void setvDireccionFactura(String vDireccionFactura) {
        this.vDireccionFactura = vDireccionFactura;
    }

    public String getvTelefonoFactura() {
        return vTelefonoFactura;
    }

    public void setvTelefonoFactura(String vTelefonoFactura) {
        this.vTelefonoFactura = vTelefonoFactura;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Pagos{idPagos=").append(idPagos);
        sb.append(", iTipoPago=").append(iTipoPago);
        sb.append(", iReservacion=").append(iReservacion);
        sb.append(", iNumeroTarjeta=").append(iNumeroTarjeta);
        sb.append(", vnombreFactura=").append(vnombreFactura);
        sb.append(", vDireccionFactura=").append(vDireccionFactura);
        sb.append(", vTelefonoFactura=").append(vTelefonoFactura);
        sb.append('}');
        return sb.toString();
    }

    
    
    
    
}
