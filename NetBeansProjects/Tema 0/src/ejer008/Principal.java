/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer008;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("introduce un valor:");
        double a = teclado.nextDouble();
        System.out.println("introduce otro valor:");
        double b = teclado.nextDouble();
        System.out.println("otro valor más:");
        double c = teclado.nextDouble();
        double resultado = (a + b + c) / 3;
        System.out.println("El resultado es: " + resultado);
        //System.out.println(Integer.MAX_VALUE);
    }
}
