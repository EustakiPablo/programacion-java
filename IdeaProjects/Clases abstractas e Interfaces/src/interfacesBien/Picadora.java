package interfacesBien;

public class Picadora implements PiezaGirable{
    @Override
    public void girar() {
        System.out.println("El brazo gira a 100 rpm");
    }
}
