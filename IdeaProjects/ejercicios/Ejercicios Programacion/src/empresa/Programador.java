package empresa;

public class Programador {
    private String nombre;

    private int horasExtra;

    public Programador(String nombre, int horasExtra) {
        this.nombre = nombre;
        this.horasExtra = horasExtra;
    }
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getHorasExtra() {
        return horasExtra;
    }

    public void setHorasExtra(int horasExtra) {
        this.horasExtra = horasExtra;
    }
    public void visualizar(){
        System.out.println("-------------------");
        System.out.println(nombre+" "+horasExtra);
        System.out.println("-------------------");
    }
    public double calcularSueldo(){
        return 40*4*10+2*horasExtra*10;
    }

}
