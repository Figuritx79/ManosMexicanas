package mx.edu.utez.manosmexicanas.model;

public class Usuario {
    private String nombre;
    private String correo;
    private String password;
    private String apellido;
    private Role role;
    private int telefono ;
    private Domicilio direccion;
    private boolean status;

    public Usuario() {
    }

    public Usuario(String nombre, String correo, String password, String apellido, int telefono, Domicilio direccion) {
        this.nombre = nombre;
        this.correo = correo;
        this.password = password;
        this.apellido = apellido;
        this.telefono = telefono;
        this.direccion = direccion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public Domicilio getDireccion() {
        return direccion;
    }

    public void setDireccion(Domicilio direccion) {
        this.direccion = direccion;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
