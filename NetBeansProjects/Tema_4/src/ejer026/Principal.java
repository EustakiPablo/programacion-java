/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer026;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int[][] matriz = new int[3][3];
        System.out.println("Matriz1");
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
                matriz[i][j] = (int) (Math.random() * 101);
                //System.out.print(matriz[i][j]+" ");
            }
            System.out.println(Arrays.toString(matriz[i]));
            //System.out.println("");
        }

        //sumar matrices
        System.out.println("Matriz2");
        int[][] matriz2 = new int[3][3];
        for (int i = 0; i < matriz2.length; i++) {
            for (int j = 0; j < matriz2[i].length; j++) {
                matriz2[i][j] = (int) (Math.random() * 101);
                //System.out.print(matriz[i][j]+" ");
            }
            System.out.println(Arrays.toString(matriz2[i]));
            //System.out.println("");
        }
        int[][] matriz3 = new int[3][3];
        System.out.println("Matriz 3");
        for (int i = 0; i < matriz3.length; i++) {
            for (int j = 0; j < matriz3[i].length; j++) {
                matriz3[i][j] = matriz[i][j] + matriz2[i][j];
                //System.out.print(matriz[i][j]+" ");
            }
            System.out.println(Arrays.toString(matriz3[i]));
            //System.out.println("");
        }
        System.out.println("Introduce un número: ");
        int num = teclado.nextInt();
        System.out.println("Producto escalar: ");
        int[][] productoEscalar = new int[3][3];
        for (int i = 0; i < productoEscalar.length; i++) {
            for (int j = 0; j < productoEscalar[i].length; j++) {
                productoEscalar[i][j] = matriz2[i][j]*num;
                //System.out.print(matriz[i][j]+" ");
            }
            System.out.println(Arrays.toString(productoEscalar[i]));
            //System.out.println("");
        }
    }
}
