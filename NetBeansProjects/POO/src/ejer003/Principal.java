/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer003;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Coche c = new Coche("Porsche","Cayenne");
        System.out.println(c.getMarca()+" "+c.getModelo());
        Coche c1 = new Coche("Taycan");
        System.out.println(c1.getMarca()+" "+c1.getModelo());
        Coche c2 = new Coche();
        System.out.println(c2.getMarca()+" "+c2.getModelo());
    }
}
