/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer013;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce el valor x1 y x2");
        double x1 = teclado.nextDouble();
        double x2 = teclado.nextDouble();
        System.out.println("Introduce el valor y1 e y2");
        double y1 = teclado.nextDouble();
        double y2 = teclado.nextDouble();

        //Algoritmo
        double resultado = Math.sqrt(Math.pow((x2 - x1), 2) + Math.pow((y2 - y1), 2));
        //Salida
        System.out.println(resultado);
    }
}
