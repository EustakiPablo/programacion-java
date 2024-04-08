package interfacesBien;

public class AdaptadorBrazoAcero implements PiezaGirable{
    private BrazoAcero brazoAcero;

    public AdaptadorBrazoAcero(BrazoAcero brazoAcero) {
        this.brazoAcero = brazoAcero;
    }

    public BrazoAcero getBrazoAcero() {
        return brazoAcero;
    }

    public void setBrazoAcero(BrazoAcero brazoAcero) {
        this.brazoAcero = brazoAcero;
    }


    public void girar() {
        brazoAcero.rotar();
    }
}
