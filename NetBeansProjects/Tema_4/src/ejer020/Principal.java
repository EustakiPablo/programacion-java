/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer020;

import java.util.ArrayList;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        ArrayList<String> listaPaises = new ArrayList();
        ArrayList<Integer> edades = new ArrayList();
        
        listaPaises.add("España");
        listaPaises.add("Francia");
        listaPaises.add("Portugal");
        
        listaPaises.add(1,"Italia");
        
        edades.add(22);
        edades.add(31);
        edades.add(18);
        System.out.println(listaPaises);
        System.out.println(edades);
        
        
        /*hola.add(1);
        hola.add(1);
        hola.add(25);
        hola.add(50);
        System.out.println(hola);*/
    }
}
