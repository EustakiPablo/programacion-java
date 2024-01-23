package casa_personas;

import java.util.ArrayList;
import java.util.Objects;

public class Persona {
    private String nombre;
    private ArrayList<Casa> casas;
    public Persona(String nombre){
        this.nombre = nombre;
        this.casas = new ArrayList<Casa>();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Persona persona = (Persona) o;
        return Objects.equals(nombre, persona.nombre);
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.nombre);
    }

    public boolean contains(Object o) {
        return casas.contains(o);
    }

    public boolean add(Casa casa) {
        return casas.add(casa);
    }

}
