/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer021;

import java.util.ArrayList;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        ArrayList<Integer> componentes = new ArrayList();
        
        for (int i = 0; i < 15; i++) {
            componentes.add((int)(Math.random()*101));
        }
        System.out.println(componentes);
        int minimo = componentes.get(0);
        int mayor = componentes.get(0);
        for (int i = 0; i < componentes.size(); i++) {
            if (componentes.get(i)>mayor) {
                mayor = componentes.get(i);
            }
            if (componentes.get(i)<minimo) {
                minimo = componentes.get(i);
            }
        }
        System.out.println("Mayor: "+mayor);
        System.out.println("Menor: "+minimo);
    }
}
