package interfacesBien;

public class Varilla implements PiezaGirable{

    @Override
    public void girar() {
        System.out.println("El brazo gira a 10 rpm.");
    }
}
