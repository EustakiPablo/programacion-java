package interfacesBien;

public class Motor {
    private PiezaGirable pieza;
    public PiezaGirable getPieza() {
        return pieza;
    }
    public void setPieza(PiezaGirable pieza) {
        this.pieza = pieza;
    }
    public void rotar(){
        pieza.girar();
    }
}
