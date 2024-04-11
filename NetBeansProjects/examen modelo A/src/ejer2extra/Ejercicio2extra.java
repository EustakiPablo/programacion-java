/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer2extra;

/**
 *
 * @author FP
 */
public class Ejercicio2extra {

    public static void main(String[] args) {
        int[] numeros = new int[100];
        int cont = 0;
        int num = 1;
        while (cont < numeros.length) {
            if (num % 5 == 0) {
                numeros[cont] = num;
                cont++;
            }
            num++;
        }
        int pares = 0;
        int impares = 0;
        for (int i = 0; i < numeros.length; i++) {
            if (numeros[i]%2==0) {
                pares+=numeros[i];
            }else{
                impares+=numeros[i];
            }
        }
        System.out.println("La suma de números pares es: "+pares);
        System.out.println("La suma de números impares es: "+impares);
    }
}
