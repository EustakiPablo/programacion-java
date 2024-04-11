/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer5;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Ejercicio5 {
    public static void main(String[] args) {
        /*Programa que realice una conversión de números binarios a decimales,
        para ello se introducirá el número binario en un array en el que cada
        posición es el valor 0 o 1. El tamaño del binario es de 8.*/
        int[] binario = {1,0,1,1,0,1,1,0};
        int[] decimal = new int[binario.length];
        int total = 0;
        int contPow = 0;
        for (int i = 0; i < binario.length; i++) {
            if (binario[binario.length-1-i]==1) {
                decimal[binario.length-1-i]=(int)(Math.pow(2, contPow));
            }
            contPow++;
        }
        for (int i = 0; i < decimal.length; i++) {
            total+=decimal[i];
        }
        System.out.println("El numero decimal es: "+total);
        //System.out.println(Arrays.toString(decimal));
    }
}
