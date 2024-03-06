package clasesAbstractas;

public class Coche extends Vehiculo{
    private int puertas;

    public Coche(String modelo, String marca, int puertas) {
        super(modelo, marca);
        this.puertas = puertas;
    }

    @Override
    public void acelerar() {
        System.out.println("El coche acelera");
    }
}
