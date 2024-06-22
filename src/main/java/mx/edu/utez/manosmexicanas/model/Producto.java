package mx.edu.utez.manosmexicanas.model;

public class Producto {

    private String nombre;
    private double precio;
    private Color color;
    private double tamano;
    private Categoria categoria;
    private String descripcion;

    public Producto() {

    }

    public Producto(String nombre, double precio, Color color, double tamano, Categoria categoria, String descripcion) {
        this.nombre = nombre;
        this.precio = precio;
        this.color = color;
        this.tamano = tamano;
        this.categoria = categoria;
        this.descripcion = descripcion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public double getTamano() {
        return tamano;
    }

    public void setTamano(double tamano) {
        this.tamano = tamano;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
