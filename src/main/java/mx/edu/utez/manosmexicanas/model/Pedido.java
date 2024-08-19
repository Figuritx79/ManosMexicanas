package mx.edu.utez.manosmexicanas.model;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Pedido {
    private int id;
    private Usuario usuario;
    private int cantidad;
    private double total;
    private LocalDateTime fecha;
    private Domicilio domicilio;

    public Pedido() {
    }

    public Pedido(Usuario usuario, int cantidad, double total, LocalDateTime fecha, Domicilio domicilio) {
        this.usuario = usuario;
        this.cantidad = cantidad;
        this.total = total;
        this.fecha = fecha;
        this.domicilio = domicilio;
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

    public LocalDateTime getFecha() {
        return fecha;
    }

    public void setFecha(LocalDateTime fecha) {
        this.fecha = fecha;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
