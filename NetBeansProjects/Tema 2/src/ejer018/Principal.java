/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer018;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int key = 5555;
        System.out.println("Introduce la clave de la caja fuerte: ");
        int user = teclado.nextInt();
        int acceso = 0;
        for (int i = 1; i < 4; i++) {
            if (user == key) {
                System.out.println("Acceso concedido.");
                i = 4;
                acceso = 1;
            } else {
                System.out.println("Acceso denegado");
                System.out.println("Te quedan "+(4-i)+" intentos");
                user = teclado.nextInt();
                acceso = 2;
            }

        }
        if (acceso == 2) {
            System.out.println("Acceso denegado");
        }
    }
}
