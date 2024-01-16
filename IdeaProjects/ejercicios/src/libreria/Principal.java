package libreria;

public class Principal {
    public static void main(String[] args) {
        Libro l1 = new Libro();
        l1.setTitulo("Titulo1");
        l1.setAutor("Autor1");
        l1.setnPag(200);
        Libro l2 = new Libro("Libro2","Autor2",100);
        Libro l3 = new Libro();
        l3.setTitulo("Titulo3");
        l1.prestamo();
        l1.devolucion();
        l2.prestamo();
        System.out.println(l3.toString());
    }
}
