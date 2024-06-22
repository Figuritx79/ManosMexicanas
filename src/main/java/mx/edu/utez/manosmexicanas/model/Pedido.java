package mx.edu.utez.manosmexicanas.model;

public class Pedido {
    private Usuario usuario;
    private int cantidad;
    private double total;
    private Domicilio domicilio;

    public Pedido(String usuario, int cantidad, double total, String domicilio) {

    }

    public Pedido(Usuario usuario, int cantidad, Domicilio domicilio, double total) {
        this.usuario = usuario;
        this.cantidad = cantidad;
        this.domicilio = domicilio;
        this.total = total;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Domicilio getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(Domicilio domicilio) {
        this.domicilio = domicilio;
    }
}
