/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer030;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Realiza un programa que pinte una pirámide por pantalla.
        La altura se debe pedir por teclado. El carácter con el que se pinta la
        pirámide también se debe pedir por teclado.
         */
        System.out.println("Introduce un carácter para pintar la pirámide:");
        String cha = teclado.next();
        System.out.println("Introduce la altura de la pirámide:");
        int alt = teclado.nextInt();
        
        for (int i = 1; i <= alt; i++) {
            for (int blank = 1; blank <= alt-i; blank++) {
                System.out.print(" ");
            }
            for (int pint = 1; pint <= (i*2)-1; pint++) {
                System.out.print(cha);
            }
            System.out.println("");
        }
    }
}