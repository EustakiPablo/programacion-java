package interfacesBien;

public class Batidora implements PiezaGirable{
    private String vaso;

    public String getVaso() {
        return vaso;
    }

    public void setVaso(String vaso) {
        this.vaso = vaso;
    }

    @Override
    public void girar() {
        System.out.println("El brazo gira 40 rpm.");
    }
}
