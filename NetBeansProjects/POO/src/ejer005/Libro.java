/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer005;

/**
 *
 * @author FP
 */
public class Libro {

    private String titulo;
    private int totalPaginas;
    private int paginaActual;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getTotalPaginas() {
        return totalPaginas;
    }

    public void setTotalPaginas(int totalPaginas) {
        this.totalPaginas = totalPaginas;
    }

    public int getPaginaActual() {
        return paginaActual;
    }
    /*
    public void setAginaActual(int aginaActual) {
        this.aginaActual = aginaActual;
    }
    */
    public void avanzarPagina(){
        paginaActual++;
    }
    private void avanzarPagina(int paginas){
        paginaActual+=paginas;
    }
    public void avanzarCapitulo(){
        avanzarPagina(20);
    }
}
