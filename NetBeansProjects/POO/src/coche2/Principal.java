/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package coche2;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Coche c1 = new Coche("Porche","Cayenne");
        Coche c2 = new Coche("Porche","Cayenne");
        Coche c3 = new Coche("Porche","Cayenne");
        Coche c4 = new Coche("Porche","Cayenne");
        System.out.println(Coche.getContador());
    }
}
