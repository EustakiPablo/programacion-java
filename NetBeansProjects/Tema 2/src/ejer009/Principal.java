/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer009;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce un valor: ");
        int num = teclado.nextInt();
        while (num != 12345678) {
            if (num < 25) {
                System.out.println("Es menor a 25");
            } else if (num > 25) {
                System.out.println("Es mayor a 25");
            } else {
                System.out.println("Es 25");
            }
            num = teclado.nextInt();
        }

    }

}
