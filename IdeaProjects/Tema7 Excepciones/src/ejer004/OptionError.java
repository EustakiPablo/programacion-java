package ejer004;

public class OptionError extends Exception{
    @Override
    public String getMessage() {
        return "El valor introducido no es válido, las opciones son 1 o 2";
    }
}
