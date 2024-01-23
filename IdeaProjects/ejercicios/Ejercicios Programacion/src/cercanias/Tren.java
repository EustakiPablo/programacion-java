package cercanias;

import java.util.ArrayList;

public class Tren {
    private Maquinista maquinista;
    private ArrayList<Vagon> vagones;
    private Locomotora locomotora;

    public Tren(Maquinista maquinista,Locomotora locomotora) {
        this.maquinista = maquinista;
        this.locomotora = locomotora;
        this.vagones = new ArrayList<Vagon>();
    }

    public boolean add(Vagon vagon) {
        return vagones.add(vagon);
    }
    public void verTren(){
        System.out.println("Maquinista: "+maquinista);
        System.out.println("Locomotora: "+locomotora);
        System.out.println("Carga de los vagones: ");
        for (Vagon v : vagones){
            System.out.println(v.getCargaActual()+", ");
        }
    }
}
