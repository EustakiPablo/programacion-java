/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer005;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Libro l1 = new Libro();
        l1.setTitulo("Últimos dias en Brlín");
        l1.setTotalPaginas(345);
        System.out.println(l1.getPaginaActual());
        l1.avanzarPagina();
        System.out.println(l1.getPaginaActual());
        l1.avanzarPagina();
        l1.avanzarPagina();
        l1.avanzarPagina();
        l1.avanzarPagina();
        System.out.println(l1.getPaginaActual());
        l1.avanzarCapitulo();
        System.out.println(l1.getPaginaActual());
    }
    
    
}
