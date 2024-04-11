/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer4extra;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Ejercicio4extra {
    public static void main(String[] args) {
        /**/
        int[][]numeros = {
            {1,2},
            {3,4},
            {5,6}
        };
        int[][] numeros2= {
            {0,0,0},
            {0,0,0}
        };
        for (int i = 0; i < numeros.length; i++) {
            for (int j = 0; j < numeros[i].length; j++) {
                numeros2[j][i]=numeros[i][j];
            }
        }
        for (int i = 0; i < numeros2.length; i++) {
            for (int j = 0; j < numeros2[i].length; j++) {
                System.out.print(numeros2[i][j]+" ");
            }
            System.out.println("");
        }
    }
}
