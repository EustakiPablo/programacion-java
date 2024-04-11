/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer1;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Ejercicio1 {

    public static void main(String[] args) {
        int[] numeros = new int[30];
        int cont = 0;
        for (int i = 0; i < numeros.length; i++) {
            numeros[i] = (int) (Math.random() * 101);
        }
        System.out.println(Arrays.toString(numeros));

        for (int i = 0; i < numeros.length; i++) {
            if (numeros[i] % 5 == 0) {
                cont++;
            }
        }
        System.out.println("Hay " + cont + " números múltiplos de 5");
    }
}
