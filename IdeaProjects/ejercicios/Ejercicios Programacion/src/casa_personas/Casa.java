package casa_personas;

import java.util.ArrayList;
import java.util.Objects;

public class Casa {
    private String direccion;
    private ArrayList<Persona> personas;

    public Casa(String direccion) {
        this.direccion = direccion;
        this.personas = new ArrayList<Persona>();
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public boolean contains(Object o) {
        return personas.contains(o);
    }

    public boolean add(Persona persona) {
        return personas.add(persona);
    }
    public int totalPersonas(){
        return personas.size();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Casa casa = (Casa) o;
        return Objects.equals(direccion, casa.direccion);
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.direccion);
    }
}
