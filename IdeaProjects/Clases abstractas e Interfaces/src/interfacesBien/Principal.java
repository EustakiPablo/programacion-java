package interfacesBien;

public class Principal {
    public static void main(String[] args) {
        Batidora b1 = new Batidora();
        Varilla v1 = new Varilla();
        Picadora p1 = new Picadora();
        BrazoAcero ba1 = new BrazoAcero();

        Motor m1 = new Motor();
        m1.setPieza(p1);
        m1.rotar();
        m1.setPieza(new AdaptadorBrazoAcero(ba1));
    }
}
