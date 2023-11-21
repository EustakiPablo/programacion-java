/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer014;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        int cont = 0;
        do {
            if (cont%5==0) {
                System.out.print(cont+ " - ");
            }
            cont++;
        } while (cont <= 100);
    }
}
