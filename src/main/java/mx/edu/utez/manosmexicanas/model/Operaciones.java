package mx.edu.utez.manosmexicanas.model;

import javax.management.modelmbean.ModelMBean;

public class Operaciones {

    private String nombre;
    private Modulo modulo;

    public Operaciones() {
    }

    public Operaciones(String nombre, Modulo modulo) {

    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Modulo getModulo() {
        return modulo;
    }

    public void setModulo(Modulo modulo) {
        this.modulo = modulo;
    }
}
