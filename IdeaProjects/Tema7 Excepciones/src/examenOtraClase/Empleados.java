package examenOtraClase;

public class Empleados {
    private String nombre;
    private String apellido;
    private String jefe;
    private String departamento;

    public Empleados(String nombre, String apellido, String jefe, String departamento) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.jefe = jefe;
        this.departamento = departamento;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getJefe() {
        return jefe;
    }

    public String getDepartamento() {
        return departamento;
    }
}
