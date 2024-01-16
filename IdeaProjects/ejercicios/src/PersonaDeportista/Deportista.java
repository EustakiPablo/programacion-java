package PersonaDeportista;

public class Deportista extends Persona {
    private  String deporte;

    public Deportista(String nombre, String deporte) {
        super(nombre);
        this.deporte = deporte;
    }

    public Deportista(String nombre) {
        super(nombre);
    }

    public String getDeporte() {
        return deporte;
    }

    public void setDeporte(String deporte) {
        this.deporte = deporte;
    }
    @Override
    public void andar(){
        super.imprimeTextoAndar();
        System.out.println(" 10 km/h");
    }
}
