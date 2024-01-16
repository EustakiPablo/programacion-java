package posiciones;

public class Principal {
    public static void main(String[] args) {
        Posicion p1 = new Posicion();
        Posicion p2 = new Posicion(6,7);
        p1.incX();
        p1.decY();
        p1.showCoords();
        p2.incY();
        p2.decX();
        p2.showCoords();
    }
}
