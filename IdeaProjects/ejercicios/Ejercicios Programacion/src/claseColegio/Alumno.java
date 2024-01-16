package claseColegio;

public class Alumno {
    private String matricula;
    private String nombre;
    private double nota1;
    private double nota2;
    private double nota3;

    public Alumno(String matricula, String nombre, double nota1, double nota2, double nota3) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.nota1 = nota1;
        this.nota2 = nota2;
        this.nota3 = nota3;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getNota1() {
        return nota1;
    }

    public void setNota1(double nota1) {
        this.nota1 = nota1;
    }

    public double getNota2() {
        return nota2;
    }

    public void setNota2(double nota2) {
        this.nota2 = nota2;
    }

    public double getNota3() {
        return nota3;
    }

    public void setNota3(double nota3) {
        this.nota3 = nota3;
    }
    public double media(){
        return (nota1+nota2+nota3)/3;
    }
    public void verAprobado(){
        String aprueba = "no ha aprobado";
        if (media()>=5){
            aprueba = "ha aprobado";
        }
        System.out.println("El alumno "+matricula+" "+nombre+" "+aprueba+" con una nota de: "+(nota1+nota2+nota3)/3);
    }
}
