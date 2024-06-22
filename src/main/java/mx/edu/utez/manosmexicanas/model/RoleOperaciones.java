package mx.edu.utez.manosmexicanas.model;

public class RoleOperaciones {

    private Role role;
    private Operaciones operacion;

    public RoleOperaciones() {
    }

    public RoleOperaciones(Role role, Operaciones operacion) {
        this.role = role;
        this.operacion = operacion;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Operaciones getOperacion() {
        return operacion;
    }

    public void setOperacion(Operaciones operacion) {
        this.operacion = operacion;
    }
}
