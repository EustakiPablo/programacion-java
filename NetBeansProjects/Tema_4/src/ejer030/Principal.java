/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer030;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        int[] primos = new int[100];
        int contador = 0;
        int contadorPrimos = 0;
        int num = 1;
        
        while(contador<primos.length){
            for (int i = 1; i <= num; i++) {
                if (num%i==0) {
                    contadorPrimos++;
                }
            }
            if (contadorPrimos<=2) {
                primos[contador]=num;
                contador++;
            }
            contadorPrimos=0;
            num++;
        }
        System.out.println(Arrays.toString(primos));
    }
}
