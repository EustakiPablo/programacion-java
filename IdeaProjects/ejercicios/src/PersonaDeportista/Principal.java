package PersonaDeportista;

public class Principal {
    public static void main(String[] args) {
        Deportista d1 = new Deportista("Nadal");
        //d1.setNombre("Nadal");
        //d1.setDeporte("Lo que quiera, es el mejor");
        /*System.out.println(d1.getNombre());
        System.out.println(d1.getDeporte());*/
        Persona p1 = new Persona();
        p1.setNombre("Abuelillo");
        p1.andar();
        d1.andar();
        Persona p5 = new Deportista("Deportista");
        p5.andar();

        Persona p6 = new Deportista("Calleja","barranquismo");
        p1.andar();
        Deportista d = (Deportista) p6;
        System.out.println(d.getDeporte());
    }
}
