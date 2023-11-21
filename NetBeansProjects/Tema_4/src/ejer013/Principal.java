/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer013;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        /*Funciones de array que ya existen*/
        Scanner teclado = new Scanner(System.in);
        int[] numeros = {25, 27, 39, 98, 53};
        int[] numeros2 = {25, 27, 39, 98, 53};
        int[] numeros3 = {2, 27, 39, 98, 53};
        int[] numeros4 = {25, 27, 39, 98};
        String[] dias = {"Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"};
        /*toString()*/
 /*for (int i = 0; i < numeros.length; i++) {
            if (i == 0) {
                System.out.print("[");
            }
            if (i == numeros.length - 1) {
                System.out.print(numeros[i] + "]");
            } else {
                System.out.print(numeros[i] + ", ");
            }
        }
         */
 /*Metodo clone()*/
 /* int[] numeros2 = new int[numeros.length];
        for (int i = 0; i < numeros.length; i++) {

            numeros2[i] = numeros[i];
            if (i == 0) {
                System.out.print("[");
            }
            if (i == numeros2.length - 1) {
                System.out.print(numeros2[i] + "]");
            } else {
                System.out.print(numeros2[i] + ", ");
            }
        }*/
        //System.out.println(Arrays.toString(numeros2));
        /*Metodo short() no*/
 /*Metodo buscar binarySearch()*/
        System.out.println("");
        //CAMBIAR A WHILE
        System.out.println("Introduce un número para buscar");
        int num = teclado.nextInt();
        int pos = -1;
        boolean dentro = false;
        int cont = 0;
        while (cont < numeros.length || dentro == false) {
            if (num == numeros[cont]) {
                dentro = true;
                pos = cont;
            }
            cont++;
        }
        System.out.println("La posición es: " + pos);
            /*for (int i = 0; i < numeros.length && dentro == false; i++) {
            if (num == numeros[i]) {
                dentro = true;
                pos = i;
            }
        }
        System.out.println("La posición es: " + pos);*/

            //Metodo comparar equals()
            /*boolean iguales = true;
        if (numeros.length != numeros3.length) {
            iguales = false;
        } else {
            for (int i = 0; i < numeros.length; i++) {
                if (numeros[i] != numeros3[i]) {
                    iguales = false;
                }
            }
        }
        System.out.println(iguales);*/
 /*System.out.println("Introduce el número");
        int num = teclado.nextInt();
        int[] numeros5 = new int[num];
        for (int i = 0; i < num; i++) {
            numeros5[i] = numeros[i];
        }*/
            //System.out.println(Arrays.toString(numeros5));
        }
    }