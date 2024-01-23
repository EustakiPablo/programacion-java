package empresa;

import java.util.ArrayList;

public class Empresa {
    public String nombre;
    private ArrayList<Programador> programadores;

    public Empresa(String nombre) {
        this.nombre = nombre;
        this.programadores = new ArrayList<Programador>();
    }

    public void anyadirProgramador(String nombre, int horasExtra){
        programadores.add(new Programador(nombre,horasExtra));
    }
    public void visualizarProgramadores(){
        for (Programador programador: programadores){
            programador.visualizar();
        }
    }
    public void eliminarProgramador(String nombre){
        int contador = 0;
        int posicion = 0;
        for (Programador p : programadores){
            if (p.getNombre().equalsIgnoreCase(nombre)){
                posicion=contador;
            }
            contador++;
        }
        programadores.remove(posicion);
    }
    public double calcularSueldos(){
        double total = 0;
        for (Programador p: programadores){
            total+=p.calcularSueldo();
        }
        return total;
    }
}
