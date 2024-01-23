package PersonaDeportista;

public class Persona {
    private String nombre;

    public String getNombre() {
        return nombre;
    }

    public Persona() {
    }

    public Persona(String nombre) {
        this.nombre = nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void andar(){
        imprimeTextoAndar();
        System.out.println(" 5km/h");
    }

    @Override
    public int hashCode() {
        return nombre.hashCode();
    }

    @Override
    public boolean equals(Object persona) {
        Persona nueva = (Persona) persona;
        return nueva.getNombre().equals(this.getNombre());
    }

    public void imprimeTextoAndar(){
        System.out.print(getNombre()+" camina a");
    }
}
