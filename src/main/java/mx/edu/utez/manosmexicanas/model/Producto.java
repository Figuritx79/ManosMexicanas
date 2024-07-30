package mx.edu.utez.manosmexicanas.model;

public class Producto {

    private int id;
    private String nombre;
    private double precio;
    private Color color;
    private double tamano;
    private Categoria categoria;
    private String descripcion;
    private int stock;

    public Producto() {

    }

    public Producto(int id, int stock, String descripcion, Categoria categoria, double tamano, Color color, double precio, String nombre) {
        this.id = id;
        this.stock = stock;
        this.descripcion = descripcion;
        this.categoria = categoria;
        this.tamano = tamano;
        this.color = color;
        this.precio = precio;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
}
