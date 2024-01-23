package relación_1_N;

import java.util.ArrayList;

public class CajaGalletas {
    private ArrayList<Galleta> galletas;

    public CajaGalletas() {
        galletas = new ArrayList<Galleta>();
    }

    public ArrayList<Galleta> getGalletas() {
        return galletas;
    }

    public void setGalletas(ArrayList<Galleta> galletas) {
        this.galletas = galletas;
    }
    public void addGalleta(String sabor, int precio){
        galletas.add(new Galleta(sabor,precio));
    }
    public int totalGalletas(){
        return galletas.size();
    }
    public double precioTotal(){
        double total = 0;
        for (Galleta galleta: galletas){
            total += galleta.getPrecio();
        }
        return total + 2;
    }
}
