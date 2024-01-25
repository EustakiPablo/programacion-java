package cercanias;

public class Locomotora {
    private String matricula;
    private String potencia;
    private String antiguedad;
    private Mecanico mecanico;

    public Locomotora() {
    }

    public Locomotora(String matricula, String potencia, String antiguedad, Mecanico mecanico) {
        this.matricula = matricula;
        this.potencia = potencia;
        this.antiguedad = antiguedad;
        this.mecanico = mecanico;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getPotencia() {
        return potencia;
    }

    public void setPotencia(String potencia) {
        this.potencia = potencia;
    }

    public String getAntiguedad() {
        return antiguedad;
    }

    public void setAntiguedad(String antiguedad) {
        this.antiguedad = antiguedad;
    }

    public Mecanico getMaquinista() {
        return mecanico;
    }

    public void setMaquinista(Mecanico mecanico) {
        this.mecanico = mecanico;
    }

    public void visualizar(){
        System.out.println("----------\nLOCOMOTORA");
        System.out.println("Mecanico: ");
        mecanico.visualizar();
        System.out.println("Antigüedad: ");
        System.out.println(antiguedad);
        System.out.println("Potencia: ");
        System.out.println(potencia);
        System.out.println("Matrícula: ");
        System.out.println(matricula);
    }
}
