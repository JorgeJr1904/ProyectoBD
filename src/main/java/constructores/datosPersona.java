/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constructores;

/**
 *
 * @author JorgeJr
 */
public class datosPersona {
    
    private int idDatosPersona;
    private String vNombresPersona;
    private String vApellidosPersona;
    private String vSexo;
    private int TipoIdentificacion; 
    private String vNoIdentificacion; 
    private String vDireccionPersona;
    private String vTelefonoPersona; 
    private String vPaisResidencia; 
    private String vUsuarioReservacion;
    private int iEdad;

    public datosPersona() {
    }

    public datosPersona(int idDatosPersona) {
        this.idDatosPersona = idDatosPersona;
    }

    
    
    public datosPersona(int idDatosPersona, String vNombresPersona, String vApellidosPersona, String vSexo, int TipoIdentificacion, String vNoIdentificacion, String vDireccionPersona, String vTelefonoPersona, String vPaisResidencia, String vUsuarioReservacion, int iEdad) {
        this.idDatosPersona = idDatosPersona;
        this.vNombresPersona = vNombresPersona;
        this.vApellidosPersona = vApellidosPersona;
        this.vSexo = vSexo;
        this.TipoIdentificacion = TipoIdentificacion;
        this.vNoIdentificacion = vNoIdentificacion;
        this.vDireccionPersona = vDireccionPersona;
        this.vTelefonoPersona = vTelefonoPersona;
        this.vPaisResidencia = vPaisResidencia;
        this.vUsuarioReservacion = vUsuarioReservacion;
        this.iEdad = iEdad;
    }

    public datosPersona(String vNombresPersona, String vApellidosPersona, String vSexo, int TipoIdentificacion, String vNoIdentificacion, String vDireccionPersona, String vTelefonoPersona, String vPaisResidencia, String vUsuarioReservacion, int iEdad) {
        this.vNombresPersona = vNombresPersona;
        this.vApellidosPersona = vApellidosPersona;
        this.vSexo = vSexo;
        this.TipoIdentificacion = TipoIdentificacion;
        this.vNoIdentificacion = vNoIdentificacion;
        this.vDireccionPersona = vDireccionPersona;
        this.vTelefonoPersona = vTelefonoPersona;
        this.vPaisResidencia = vPaisResidencia;
        this.vUsuarioReservacion = vUsuarioReservacion;
        this.iEdad = iEdad;
    }

    public int getIdDatosPersona() {
        return idDatosPersona;
    }

    public void setIdDatosPersona(int idDatosPersona) {
        this.idDatosPersona = idDatosPersona;
    }

    public String getvNombresPersona() {
        return vNombresPersona;
    }

    public void setvNombresPersona(String vNombresPersona) {
        this.vNombresPersona = vNombresPersona;
    }

    public String getvApellidosPersona() {
        return vApellidosPersona;
    }

    public void setvApellidosPersona(String vApellidosPersona) {
        this.vApellidosPersona = vApellidosPersona;
    }

    public String getvSexo() {
        return vSexo;
    }

    public void setvSexo(String vSexo) {
        this.vSexo = vSexo;
    }

    public int getTipoIdentificacion() {
        return TipoIdentificacion;
    }

    public void setTipoIdentificacion(int TipoIdentificacion) {
        this.TipoIdentificacion = TipoIdentificacion;
    }

    public String getvNoIdentificacion() {
        return vNoIdentificacion;
    }

    public void setvNoIdentificacion(String vNoIdentificacion) {
        this.vNoIdentificacion = vNoIdentificacion;
    }

    public String getvDireccionPersona() {
        return vDireccionPersona;
    }

    public void setvDireccionPersona(String vDireccionPersona) {
        this.vDireccionPersona = vDireccionPersona;
    }

    public String getvTelefonoPersona() {
        return vTelefonoPersona;
    }

    public void setvTelefonoPersona(String vTelefonoPersona) {
        this.vTelefonoPersona = vTelefonoPersona;
    }

    public String getvPaisResidencia() {
        return vPaisResidencia;
    }

    public void setvPaisResidencia(String vPaisResidencia) {
        this.vPaisResidencia = vPaisResidencia;
    }

    public String getvUsuarioReservacion() {
        return vUsuarioReservacion;
    }

    public void setvUsuarioReservacion(String vUsuarioReservacion) {
        this.vUsuarioReservacion = vUsuarioReservacion;
    }

    public int getiEdad() {
        return iEdad;
    }

    public void setiEdad(int iEdad) {
        this.iEdad = iEdad;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("datosPersona{idDatosPersona=").append(idDatosPersona);
        sb.append(", vNombresPersona=").append(vNombresPersona);
        sb.append(", vApellidosPersona=").append(vApellidosPersona);
        sb.append(", vSexo=").append(vSexo);
        sb.append(", TipoIdentificacion=").append(TipoIdentificacion);
        sb.append(", vNoIdentificacion=").append(vNoIdentificacion);
        sb.append(", vDireccionPersona=").append(vDireccionPersona);
        sb.append(", vTelefonoPersona=").append(vTelefonoPersona);
        sb.append(", vPaisResidencia=").append(vPaisResidencia);
        sb.append(", vUsuarioReservacion=").append(vUsuarioReservacion);
        sb.append(", iEdad=").append(iEdad);
        sb.append('}');
        return sb.toString();
    }

    
    
    
}
