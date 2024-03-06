package interfacesMalUso;

public class Principal {
    public static void main(String[] args) {
        Brazos b1 = new Batidora();
        Brazos v1 = new Varilla();
        b1.girar();
        v1.girar();
        Motor m = new Motor();
        m.setBrazo(b1);
        m.girarBrazo();
        m.setBrazo(v1);
        m.girarBrazo();
        m.getBrazo().setVaso("Vaso pequeño");
    }
}
