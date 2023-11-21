/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer003;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        int random = (int) (Math.random() * 11);

        System.out.println(random);

        System.out.println("Introduce un número del 1 al 10");
        int numIntentos = 1;
        int num = teclado.nextInt();

        while (num != random) {
            if (num < random) {
                System.out.println("El número que has introducido es menor.");
            } else {
                System.out.println("El número que has introducido es mayor.");
            }
            System.out.println("Has intentado adivinar " + numIntentos + " veces.");
            numIntentos++;
            System.out.println("Prueba de nuevo.");
            num = teclado.nextInt();
        }
        System.out.println("Correcto");
        System.out.println("Número de intentos: "+numIntentos);
    }
}
