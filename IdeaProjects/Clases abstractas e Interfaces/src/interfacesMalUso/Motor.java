package interfacesMalUso;

public class Motor {
    private Brazos brazo;
    public void girarBrazo(){
        brazo.girar();
    }
    public Brazos getBrazo() {
        return brazo;
    }

    public void setBrazo(Brazos brazo) {
        this.brazo = brazo;
    }
}
