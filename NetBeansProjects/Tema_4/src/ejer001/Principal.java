/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer001;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Número de elementos del array: ");
        int num = teclado.nextInt();
        //Arrays
        int[] ventas = new int[num];
        ventas[0] = 7;
        ventas[1] = 8;
        ventas[2] = 5;
        System.out.println("Segunda nota: "+ventas[1]);
        System.out.println("Primera nota: "+ventas[0]);
        System.out.println("Tercera nota: "+ventas[2]);
        System.out.println("Tercera nota: "+ventas[3]);
    }
}
