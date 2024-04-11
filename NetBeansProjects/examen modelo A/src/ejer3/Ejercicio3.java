/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer3;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Ejercicio3 {
    public static void main(String[] args) {
        /*Almacena en un array de 50 posiciones los 50 primeros números primos*/
        int[] primos = new int[50];
        int conP = 0;
        int num = 1;
        int contador = 0;
        while(contador<primos.length){
            for (int i = 1; i <= num; i++) {
                if (num%i==0) {
                    conP++;
                }
            }
            if (conP<=2) {
                primos[contador]=num;
                contador++;
            }
            num++;
            conP=0;
        }
        System.out.println(Arrays.toString(primos));
    }
}
