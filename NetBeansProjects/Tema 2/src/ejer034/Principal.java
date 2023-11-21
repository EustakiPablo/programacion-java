/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer034;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Escribe un programa que permita ir introduciendo una serie
        indeterminada de números mientras su suma no supere el valor 10000.
        Cuando esto último ocurra, se debe mostrar el total acumulado,
        el contador de los números introducidos y la media.
         */
        System.out.println("Introduce un número:");
        int num = teclado.nextInt();
        int fin = num;
        int contador = 0;
        while (fin < 10000) {
            System.out.println("Introduce otro número:");
            num = teclado.nextInt();
            fin = fin + num;
            contador++;
        }
        System.out.println("Has introducido " + contador + " números");
        System.out.println("El total introducido es: " + fin);
        if (fin == 0) {
            System.out.println("No has introducido ningún valor válido");
        } else {
            System.out.println("La media es: " + fin / contador);
        }
    }
}
