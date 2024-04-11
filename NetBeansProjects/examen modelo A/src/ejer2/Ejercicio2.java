/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer2;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Ejercicio2 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int[] numeros = new int[10];
        for (int i = 0; i < numeros.length; i++) {
            System.out.println("Introduce números: ");
            numeros[i]=teclado.nextInt();
        }
        System.out.println(Arrays.toString(numeros));
        for (int i = numeros.length-1; i >= 0; i--) {
            System.out.print(numeros[i]+", ");
        }
    }
}
