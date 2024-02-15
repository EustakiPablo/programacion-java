package ejer010;

import java.io.Serializable;

public class Cliente implements Serializable {
    private static int idOculto = 0;
    private int id;
    private String nombre;
    private String telefono;

    public Cliente(String nombre, String telefono) {
        id = idOculto;
        this.nombre = nombre;
        this.telefono = telefono;
        idOculto++;
    }

    public Cliente() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        Cliente.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public void visualizar(){
        System.out.println(id+" "+nombre+" "+telefono);
    }
}
