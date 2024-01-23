package cercanias;

import java.util.ArrayList;

public class Maquinaria {
    private String nombre;
    private ArrayList<Tren> trenes;

    public Maquinaria(String nombre) {
        this.nombre = nombre;
        this.trenes = new ArrayList<Tren>();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
