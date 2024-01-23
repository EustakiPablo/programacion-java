package relacionRecursiva;

public class Principal {
    public static void main(String[] args) {
        Persona carlo = new Persona("Ancelotti");
        Persona benzema = new Persona("Benzema");
        Persona rodrygo = new Persona("Rodrygo");
        carlo.add(benzema);
        carlo.add(rodrygo);
        for (Persona p: carlo.getAmigos()){
            System.out.println(p.getNombre());
        }
        System.out.println(carlo.contains(new Persona("Benzema")));
    }
}
