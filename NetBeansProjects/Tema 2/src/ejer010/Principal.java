/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer010;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce un número");
        int cont = teclado.nextInt();

        for (int i = 4; i <= cont; i++) {
            if (i % 4 == 0) {
                System.out.print(i + " - ");
            }
        }

    }
}
