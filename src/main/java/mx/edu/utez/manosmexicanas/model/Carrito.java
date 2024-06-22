package mx.edu.utez.manosmexicanas.model;

public class Carrito {

    private Producto producto;
    private Usuario usuario;
    private  int cantidad;

    public Carrito() {
    }

    public Carrito(Producto producto, Usuario usuario, int cantidad) {
        this.producto = producto;
        this.usuario = usuario;
        this.cantidad = cantidad;
    }


    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
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

}
