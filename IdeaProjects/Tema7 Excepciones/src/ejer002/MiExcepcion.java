package ejer002;

public class MiExcepcion extends Exception{

    @Override
    public String getMessage() {
        return "Me ha llegado una excepción";
    }

}
