package casa_personas;

public class Principal {
    public static void main(String[] args) {
        Casa c = new Casa("Mostoles");
        Persona p = new Persona("Paco");
        Persona p1 = new Persona("Sofia");
        c.add(p);
        c.add(p1);
        p.add(c);
        p1.add(c);
        System.out.println(c.contains(new Persona("Paco")));
        System.out.println(c.totalPersonas());
        System.out.println(p.contains(c));
        System.out.println(p.contains(new Casa("Mostoles")));
    }
}
