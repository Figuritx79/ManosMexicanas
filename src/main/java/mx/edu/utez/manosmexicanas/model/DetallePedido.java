package mx.edu.utez.manosmexicanas.model;

public class DetallePedido {

    private Pedido pedido;
    private Producto producto;
    private double precioTotal;
    private int cantidada;

    public DetallePedido() {
    }

    public DetallePedido(Pedido pedido, Producto producto, double precioTotal, int cantidada) {
        this.pedido = pedido;
        this.producto = producto;
        this.precioTotal = precioTotal;
        this.cantidada = cantidada;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public double getPrecioTotal() {
        return precioTotal;
    }

    public void setPrecioTotal(double precioTotal) {
        this.precioTotal = precioTotal;
    }

    public int getCantidada() {
        return cantidada;
    }

    public void setCantidada(int cantidada) {
        this.cantidada = cantidada;
    }
}

