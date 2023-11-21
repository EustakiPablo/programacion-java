/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer015;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        int[]numeros=new int[10];
        
        double media = 0;
        for (int i = 0; i < numeros.length; i++) {
            numeros[i]= (int)(Math.random()*101);
            media=media+numeros[i];
        }
        System.out.println(Arrays.toString(numeros));
        /*for (int i = 0; i < numeros.length; i++) {
            media=media+numeros[i];
        }*/
        System.out.println(media);
        System.out.println("La media es: "+media/numeros.length);
        int mayor = numeros[0];
        int menor = numeros[0];
        for (int i = 0; i < numeros.length; i++) {
            if (mayor<numeros[i]) {
                mayor = numeros[i];
            }
            if (menor>numeros[i]) {
                menor=numeros[i];
            }
        }
        System.out.println("El mayor es: "+mayor);
        System.out.println("El menor es: "+menor);
        int pares = 0;
        for (int i = 0; i < numeros.length; i++) {
            if (numeros[i]%2==0) {
                pares++;
            }
        }
        System.out.println("Hay "+pares+" números pares");
        for (int i = 0; i < numeros.length; i++) {
            numeros[i] = (int) (Math.pow(numeros[i], 2));
        }
        System.out.println("Los cuadrados son: "+Arrays.toString(numeros));
    }
}