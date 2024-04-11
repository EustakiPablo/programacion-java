/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ejer002;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {

        int[] matriz1 = {89, 20, 45, 9};
        int[] matriz2 = {20, 1, 25, 78};
        int[] matriz3 = {7, 25, 78, 12};
        int[] matriz4 = {78, 96, 25, 1};

        System.out.println("---------------------------------------");
        System.out.println("Las sumas de las filas");
        int suma1 = matriz1[0] + matriz1[1] + matriz1[2] + matriz1[3];
        System.out.println("Esta es la suma de la matriz 1: " + suma1);
        int suma2 = matriz2[0] + matriz2[1] + matriz2[2] + matriz2[3];
        System.out.println("Esta es la suma de la matriz 2: " + suma2);
        int suma3 = matriz3[0] + matriz3[1] + matriz3[2] + matriz3[3];
        System.out.println("Esta es la suma de la matriz 3: " + suma3);
        int suma4 = matriz4[0] + matriz4[1] + matriz4[2] + matriz4[3];
        System.out.println("Esta es la suma de la matriz 4: " + suma4);

        System.out.println("------------------------------------------");
        System.out.println("Las multiplicaciones de todas las columnas");
        int multi1 = matriz1[0] * matriz2[0] * matriz3[0] * matriz4[0];
        System.out.println("Multiplicacion de la columna 1: " + multi1);
        int multi2 = matriz1[1] * matriz2[1] * matriz3[1] * matriz4[1];
        System.out.println("Multiplicacion de la columna 2: " + multi2);
        int multi3 = matriz1[2] * matriz2[2] * matriz3[2] * matriz4[2];
        System.out.println("Multiplicacion de la columna 3: " + multi3);
        int multi4 = matriz1[3] * matriz2[3] * matriz3[3] * matriz4[3];
        System.out.println("Multiplicacion de la columna 4: " + multi4);

        System.out.println("------------------------------------------");
        int sumat = suma1 + suma2 + suma3 + suma4;
        int media = sumat / 4;
        System.out.println("Esta es la media de todos los numeros: " + media);

    }
}
