package ejer004;

public class EndOfProgram extends Exception{
    @Override
    public String getMessage() {
        return "Fin del programa";
    }
}
