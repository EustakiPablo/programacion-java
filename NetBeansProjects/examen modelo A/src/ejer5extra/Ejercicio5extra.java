/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer5extra;

import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Ejercicio5extra {
    public static void main(String[] args) {
        Integer[] numeros = new Integer[1000000000];
        ArrayList<Integer> primos = new ArrayList();
        int contador = 0;
        for (int i = 0; i < numeros.length; i++) {
            numeros[i]=i+1;
        }
        //System.out.println(Arrays.toString(numeros));
        for (int i = 0; i < numeros.length; i++) {
            for (int j = 1; j <= numeros[i]; j++) {
                if (numeros[i]%j==0) {
                    contador++;
                }
            }
            if (contador<=2) {
                primos.add(numeros[i]);
            }
            contador=0;
        }
        System.out.println("");
        System.out.println(primos);
    }
}
