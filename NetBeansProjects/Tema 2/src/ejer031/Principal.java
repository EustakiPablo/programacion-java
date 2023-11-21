/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer031;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Realiza un programa que vaya pidiendo números hasta que se introduzca
        un número negativo y nos diga cuantos números se han introducido,
        la media de los impares y el mayor de los pares. El número negativo
        sólo se utiliza para indicar el final de la introducción de datos pero
        no se incluye en el cómputo.
         */
        System.out.println("Introduce un número:");
        int num = teclado.nextInt();
        int contNum = 0;
        int neg = 0;
        int medNeg = 0;
        int mayor = 0;
        while (num > 0) {
            contNum++;
            if (num % 2 != 0) {
                neg = neg + num;
                medNeg++;
            }
            if (num % 2 == 0 && num > mayor) {
                mayor = num;
            }
            System.out.println("Introduce otro número: ");
            num = teclado.nextInt();
        }
        System.out.println("Has intoducido: " + contNum);
        if (neg == 0) {
            System.out.println("No has introducido ningún número negativo.");
        } else {
            System.out.println("La media de los número impares es: " + neg / medNeg);
        }
        System.out.println("El mayor número par introducido es: " + mayor);
    }
}
