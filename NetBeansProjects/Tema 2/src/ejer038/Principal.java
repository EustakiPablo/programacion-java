/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer038;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        System.out.println("Introduce un número: ");
        int num = teclado.nextInt();
        int contador = 0;

        for (int i = 1; i <= num; i++) {
            if (num % i == 0) {
                contador++;
            }
        }
        if (contador > 2) {
            System.out.println("No es un número primo");
        } else {
            System.out.println("Si es un número primo");
        }

    }
}
