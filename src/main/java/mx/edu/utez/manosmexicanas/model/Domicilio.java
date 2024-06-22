package mx.edu.utez.manosmexicanas.model;

public class Domicilio {

    private Usuario usuario;
    private String calle;
    private  String estado;
    private String ciudad;
    private String numeroExterior;
    private String numeroInterior;
    private  String cp;

    public Domicilio() {
    }

    public Domicilio(Usuario usuario, String calle, String estado, String ciudad, String numeroExterior, String numeroInterior, String cp) {
        this.usuario = usuario;
        this.calle = calle;
        this.estado = estado;
        this.ciudad = ciudad;
        this.numeroExterior = numeroExterior;
        this.numeroInterior = numeroInterior;
        this.cp = cp;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getNumeroExterior() {
        return numeroExterior;
    }

    public void setNumeroExterior(String numeroExterior) {
        this.numeroExterior = numeroExterior;
    }

    public String getNumeroInterior() {
        return numeroInterior;
    }

    public void setNumeroInterior(String numeroInterior) {
        this.numeroInterior = numeroInterior;
    }

    public String getCp() {
        return cp;
    }

    public void setCp(String cp) {
        this.cp = cp;
    }
}
