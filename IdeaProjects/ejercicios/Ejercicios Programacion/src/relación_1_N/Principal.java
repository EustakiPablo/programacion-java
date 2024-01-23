package relación_1_N;

public class Principal {
    public static void main(String[] args) {
        CajaGalletas miCaja = new CajaGalletas();
        miCaja.addGalleta("chocolate",1);
        miCaja.addGalleta("chocolate",1);
        miCaja.addGalleta("chocolate",1);
        miCaja.addGalleta("chocolate",1);
        System.out.println(miCaja.totalGalletas());
        System.out.println(miCaja.precioTotal());
    }
}
