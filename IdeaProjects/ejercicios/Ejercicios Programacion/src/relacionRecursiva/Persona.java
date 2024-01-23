package relacionRecursiva;

import java.util.ArrayList;
import java.util.Objects;

public class Persona {
    private String nombre;
    private ArrayList<Persona> amigos = new ArrayList<Persona>();

    public Persona(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void add(Persona persona) {
        amigos.add(persona);
    }

    public void remove(Persona persona) {
        amigos.remove(persona);
    }
    public ArrayList<Persona> getAmigos(){
        return amigos;
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
        return Objects.hash(nombre);
    }

    public boolean contains(Object o) {
        return amigos.contains(o);
    }
}
