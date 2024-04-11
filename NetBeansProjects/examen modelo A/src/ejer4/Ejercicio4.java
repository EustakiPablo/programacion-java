/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer4;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Ejercicio4 {
    public static void main(String[] args) {
        /*Escribe un programa que genere 100 números aleatorios del 0 al 20 y
        que los muestre por pantalla separados por espacios. El programa pedirá
        entonces por teclado dos valores y a continuación cambiará todas las
        ocurrencias del primer valor por el segundo en la lista generada
        anteriormente. Los números que se han cambiado deben aparecer entrecomillados.*/
        /*uno para buscar y otro para sustituir*/
        Scanner teclado = new Scanner(System.in);
        
        int[] numeros = new int[100];
        for (int i = 0; i < numeros.length; i++) {
            numeros[i]=(int)(Math.random()*21);
            System.out.print(numeros[i]+" ");
        }
        System.out.println("");
        System.out.println("Introduce el valor a buscar: ");
        int buscar = teclado.nextInt();
        System.out.println("Introduce el valor para sustituir: ");
        int sustituir = teclado.nextInt();
        System.out.println("");
        for (int i = 0; i < numeros.length; i++) {
            if (numeros[i]==buscar) {
                numeros[i]=sustituir;
                System.out.print(" '"+numeros[i]+"' ");
            }else{
                System.out.print(numeros[i]+" ");
            }
        }
    }
}
