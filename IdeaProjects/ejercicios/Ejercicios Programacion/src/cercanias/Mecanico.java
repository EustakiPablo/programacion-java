package cercanias;

public class Mecanico {
    private String nombre;
    private String dni;
    private String tel;
    private String especialidad;

    public Mecanico() {
    }

    public Mecanico(String nombre, String dni, String tel, String especialidad) {
        this.nombre = nombre;
        this.dni = dni;
        this.tel = tel;
        this.especialidad = especialidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }
}
