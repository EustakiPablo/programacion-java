package claseColegio;

public class Principal {
    public static void main(String[] args) {
        Alumno a1 = new Alumno("1111","Alumno1",5,5,6);
        Alumno a2 = new Alumno("2222","Alumno2",2,4,6);
        Alumno a3 = new Alumno("3333","Alumno3",2,7,5);
        System.out.println(a1.media());
        a2.verAprobado();
    }
}
