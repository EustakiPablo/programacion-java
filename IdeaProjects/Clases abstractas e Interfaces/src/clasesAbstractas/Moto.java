package clasesAbstractas;

public class Moto extends Vehiculo{
    private String manillar;

    public Moto(String manillar,String marca,String modelo) {
        super(modelo,marca);
        this.manillar = manillar;
    }

    @Override
    public void acelerar() {
        System.out.println("La moto acelera");
    }
}
