/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer028;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Realiza un programa que sume los 100 números siguientes a un número
        entero y positivo introducido por teclado. Se debe comprobar que el dato
        introducido es correcto (que es un número positivo).
         */
        System.out.println("Introduce un valor:");
        int num = teclado.nextInt();
        int num2 = num;
        if (num > 0) {
            for (int i = 0; i < 100; i++) {
                num2++;
                num = num+num2;
                
                System.out.println(num);
            }
        } else {
            System.out.println("No es un número valido.");
        }
    }
}
