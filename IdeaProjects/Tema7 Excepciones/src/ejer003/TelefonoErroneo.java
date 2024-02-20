package ejer003;

public class TelefonoErroneo extends Exception{
    @Override
    public String getMessage() {
        return "El teléfono no empieza por 6,7 o 9.";
    }
}
