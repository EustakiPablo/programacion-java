package ejer003;

public class TelefonoLenght extends Exception{
    private int telefono;
    public TelefonoLenght(int telefono) {
        this.telefono = telefono;
    }

    @Override
    public String getMessage() {
        String devuelvo = null;
        if (telefono > 9){
            devuelvo = "El teléfono es mayor a 9";
        } else if (telefono<9) {
            devuelvo = "El teléfono es menor a 9";
        }
        return devuelvo;
    }
}
