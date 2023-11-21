/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer011;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Si introduces el número -999 se terminará el programa.");
        System.out.println("Introduce valores para calcular la média: ");
        int num = teclado.nextInt();
        int end = 0;
        int cont = 0;

        while (num != -999) {
            end = end + num;
            cont++;
            System.out.println("Introduce otro valor: ");
            num = teclado.nextInt();
        }
        System.out.println(end / cont);

    }
}
