package cercanias;

import java.util.ArrayList;

public class Personal {
    private String nombre;
    private ArrayList<Maquinista> maquinistas;
    private ArrayList<Mecanico> mecanicos;
    private ArrayList<JefeProyecto> jefesProyecto;

    public Personal(String nombre) {
        this.nombre = nombre;
        maquinistas = new ArrayList<Maquinista>();
        mecanicos = new ArrayList<Mecanico>();
        jefesProyecto = new ArrayList<JefeProyecto>();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public ArrayList<Maquinista> getMaquinistas() {
        return maquinistas;
    }

    public ArrayList<Mecanico> getMecanicos() {
        return mecanicos;
    }

    public ArrayList<JefeProyecto> getJefesProyecto() {
        return jefesProyecto;
    }

    public void addJefe(JefeProyecto jefeProyecto) {
        jefesProyecto.add(jefeProyecto);
    }

    public void addMaquinista(Maquinista maquinista) {
        maquinistas.add(maquinista);
    }

    public void addMecanico(Mecanico mecanico) {
        mecanicos.add(mecanico);
    }
    public void verMecanicos(){
        for (Mecanico m : mecanicos){
            System.out.println("----Mecanicos----");
            System.out.print(m.getNombre()+" "+m.getDni()+", "+"\n");
            System.out.println("------------------");
        }
        System.out.println();
    }
    public void verJefesProyecto(){
        for (JefeProyecto j : jefesProyecto){
            System.out.println("----Jefes de proyecto----");
            System.out.print(j.getNombre()+" "+j.getDni()+", "+"\n");
            System.out.println("------------------");
        }
        System.out.println();
    }
    public void verMaquinistas(){
        for (Maquinista m : maquinistas){
            System.out.println("----Maquinistas----");
            System.out.print(m.getNombre()+" "+m.getDni()+", "+"\n");
            System.out.println("------------------");
        }
        System.out.println();
    }
}
