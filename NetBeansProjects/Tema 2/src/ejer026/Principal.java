/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer026;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Escribe un programa que pida una base y un exponente
        (entero positivo) y que calcule la potencia.
*/
        System.out.println("Introduce un número:");
        int base = teclado.nextInt();
        int base2 = base;
        System.out.println("Introduce un exponente:");
        int exp = teclado.nextInt();
        for (int i = 1; i < exp; i++) {
            base = base*base2;
        }
        System.out.println(base);
        
    }
}
