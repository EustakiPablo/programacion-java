/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer025;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Escribe un programa que lea una lista de diez números
        y determine cuántos son positivos, y cuántos son negativos.
         */
        int pos = 0;
        int neg = 0;
        
        for (int i = 0; i < 10; i++) {
            System.out.println("Número:");
            int num = teclado.nextInt();
            if (num > 0) {
                pos++;
            }else{
                neg++;
            }
        }
        System.out.println("Has introducido: "+pos+" positivos y "+neg+" negativos");
    }
}
