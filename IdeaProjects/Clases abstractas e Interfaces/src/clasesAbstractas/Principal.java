package clasesAbstractas;

public class Principal {
    public static void main(String[] args) {
        Moto m1 = new Moto("V","Ducatri","Monster");
        m1.acelerar();
        Coche c1 = new Coche("Ford","Mustang",5);
        c1.acelerar();
    }
}
