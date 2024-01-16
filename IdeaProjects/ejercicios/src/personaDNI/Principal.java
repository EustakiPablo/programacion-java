package personaDNI;

public class Principal {
    public static void main(String[] args) {
        Persona p1 = new Persona();
        Persona p2 = new Persona("Vinicius",23,"Hombre");
        Persona p3 = new Persona("Xavi",43,"48987543A","Hombre",1.65);
        p1.visualizar();
        p2.visualizar();
        p3.visualizar();
        System.out.println(p1.getNombre()+" "+p1.esMayorDeEdad());
        System.out.println(p2.getNombre()+" "+p2.esMayorDeEdad());
        System.out.println(p3.getNombre()+" "+p3.esMayorDeEdad());
        System.out.println(p1.toString());
        System.out.println(p2.toString());
    }
}
