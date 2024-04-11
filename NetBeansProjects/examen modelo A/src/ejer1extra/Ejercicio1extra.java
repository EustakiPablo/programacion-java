/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer1extra;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Ejercicio1extra {
    public static void main(String[] args) {
        int[] numeros = new int[100];
        int cont = 0;
        int num = 1;
        while(cont<numeros.length){
            if (num%5==0) {
                numeros[cont]=num;
                cont++;
            }
            num++;
        }
        System.out.println(Arrays.toString(numeros));
    }
}
