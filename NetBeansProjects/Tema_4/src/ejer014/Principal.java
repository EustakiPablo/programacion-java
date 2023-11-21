/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer014;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int[] numeros = new int[10];
        
        for (int i = 0; i < numeros.length; i++) {
            numeros[i] = (int)(Math.random()*100);
        }
        System.out.println(Arrays.toString(numeros));
        //almacenar resto
        for (int i = 0; i < numeros.length; i++) {
            numeros[i] = numeros[i]%13;
        }
        System.out.println(Arrays.toString(numeros));
        //Quiero multiplicarlo por un número que me dé el usuario
        System.out.println("Introduce un número para multiplicar: ");
        int num = teclado.nextInt();
        for (int i = numeros.length-1; i >= 0; i--) {
            numeros[i]=numeros[i]*num;
        }
        System.out.println(Arrays.toString(numeros));
    }
}
