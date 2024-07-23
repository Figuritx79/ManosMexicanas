package mx.edu.utez.manosmexicanas.model;

public class Color {
    private int id_color;
    private String nombre;


    public Color() {
    }


    public Color(String nombre, int id_color) {
        this.nombre = nombre;
        this.id_color = id_color;
    }
    public int getId() {
        return id_color;
    }
    public void setId(int id_color) {
        this.id_color = this.id_color;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
