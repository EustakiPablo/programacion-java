package personaDNI;

public class Persona {
    private String nombre;
    private int edad;
    private String dni;
    private String sexo;
    private double altura;
    public Persona(){
        nombre="Jenni";
        edad=33;
        sexo = "Mujer";
        altura=1.75;
        dni=generaDNI();
    }
    public Persona(String nombre, int edad, String sexo) {
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = sexo;
        dni=generaDNI();
    }
    public Persona(String nombre, int edad, String dni, String sexo, double altura) {
        this.nombre = nombre;
        this.edad = edad;
        this.dni = dni;
        this.sexo = sexo;
        this.altura = altura;
    }

    public String getNombre() {
        return nombre;
    }

    public int getEdad() {
        return edad;
    }

    public String getDni() {
        return dni;
    }

    public String getSexo() {
        return sexo;
    }

    public double getAltura() {
        return altura;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }
    public boolean esMayorDeEdad(){
        if (edad>=18){
            return true;
        } else {
            return false;
        }
    }
    public void visualizar(){
        System.out.println("------------");
        System.out.println("Nombre: "+nombre);
        System.out.println("Edad: "+edad);
        System.out.println("DNI: "+dni);
        System.out.println("Sexo: "+sexo);
        System.out.println("Altura: "+altura);
        System.out.println("------------");
    }
    public String toString(){
        return nombre+" "+edad+" "+dni+" "+sexo+" "+altura;
    }
    private String generaDNI(){
        int numero = (int) (Math.random()*99999999+1);
        String letras = "TRWAGMYFPDXBNJZSQVHLCKE";
        String dni = Integer.toString(numero)+letras.charAt(numero%23);
        return dni;
    }
}
