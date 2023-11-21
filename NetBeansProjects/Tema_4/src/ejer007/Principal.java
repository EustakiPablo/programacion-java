/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer007;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        /*Hacer un programa que cree un array de 10 posiciones de números
        aleatorios entre 1 y 100. Posteriormente se pedirá por teclado una
        posición y se mostrara en pantalla que valor tiene esa posición.
        Math.random() → Devuelve un numero entre 0.0 y 1.0
        Math.floor(Math.random()*6) → Devuelve un numero entre 0 y 5*/
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce un valor entre 1 y 10 por teclado: ");
        int num = teclado.nextInt();
        int[] array = new int[10];
        for (int i = 0; i < array.length; i++) {
            array[i] = (int) (Math.random() * 101);
        }
        //System.out.println(Arrays.toString(array));
        if (num <= 0) {
            System.out.println("No es un valor válido.");
        } else {
            System.out.println("El valor de esa posición del array es: " + array[num-1]);
        }

    }
}
