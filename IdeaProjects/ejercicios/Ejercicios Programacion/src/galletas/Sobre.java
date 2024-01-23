package galletas;

public class Sobre {
    private  String color;
    private Galleta galleta;

    public Sobre(String color, Galleta galleta) {
        this.color = color;
        this.galleta = galleta;
    }
    public Sobre(String color, String sabor, double precio){
        this.color=color;
        this.galleta = new Galleta(sabor,precio);
    }
    public String getColor() {
        return color;
    }

    public String getSabor() {
        return galleta.getSabor();
    }

    public void setSabor(String sabor) {
        galleta.setSabor(sabor);
    }

    public void setColor(String color) {
        this.color = color;
    }
}
