package PersonaDeportista;

public class Principal {
    public static void main(String[] args) {
        Persona p1 = new Persona("Xavineta");
        Persona p2 = new Persona("Xavineta");
        System.out.println(p2.hashCode());
        System.out.println(p1.hashCode());
        System.out.println(p1.equals(p2));
    }
}
