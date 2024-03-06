package clasesAbstractas;

public class Camion extends Vehiculo{
    public Camion(String modelo, String marca) {
        super(modelo, marca);
    }

    @Override
    public void acelerar() {
        System.out.println("El camión acelera");
    }
}
