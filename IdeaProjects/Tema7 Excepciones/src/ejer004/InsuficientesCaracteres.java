package ejer004;

public class InsuficientesCaracteres extends Exception{
    private int length;
    public InsuficientesCaracteres(int length) {
        this.length = length;
    }

    @Override
    public String getMessage() {
        if (length<14){
            return "La contraseña es muy corta.";
        }else{
            return "La contraseña es muy larga";
        }

    }
}
