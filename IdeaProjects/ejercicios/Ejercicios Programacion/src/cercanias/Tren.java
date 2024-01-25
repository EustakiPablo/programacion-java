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

    public void addVagon(Vagon vagon) {
        vagones.add(vagon);
    }
    public void verTren(){
        System.out.println("Maquinista: ");
        maquinista.visualizar();
        System.out.println("Locomotora: ");
        locomotora.visualizar();
        System.out.println("Mercancia en los vagones: ");
        for (Vagon v : vagones){
            System.out.print(v.getMercancia()+", ");
        }
        System.out.println();
    }
}
