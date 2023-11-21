/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer029;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Escribe un programa que obtenga los números enteros comprendidos entre
        dos números introducidos por teclado y validados como distintos,
        el programa debe empezar por el menor de los enteros introducidos e ir
        incrementando de 7 en 7.
         */
        System.out.println("Introduce un valor:");
        int num = teclado.nextInt();
        System.out.println("Introduce otro valor:");
        int num2 = teclado.nextInt();
        if (num < num2) {
            while (num <= num2) {
                System.out.print(num + " - ");
                num = num + 7;
            }
        } else {
            while (num2 <= num) {
                System.out.print(num2 + " - ");
                num2 = num2 + 7;
            }
        }

    }
}
