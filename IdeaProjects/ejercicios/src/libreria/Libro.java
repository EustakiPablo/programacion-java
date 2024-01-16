package libreria;

public class Libro {
    private String titulo;
    private String autor;
    private int nPag;

    public Libro() {
    }

    public Libro(String titulo, String autor, int nPag) {
        this.titulo = titulo;
        this.autor = autor;
        this.nPag = nPag;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getnPag() {
        return nPag;
    }

    public void setnPag(int nPag) {
        this.nPag = nPag;
    }
    public void prestamo(){
        System.out.println("Se ha prestado "+titulo+" libro.");
    }
    public void devolucion(){
        System.out.println("Se ha devuelto "+titulo+" libro.");
    }
    @Override
    public String toString(){
        return titulo+" "+autor+" "+nPag;
    }

}
