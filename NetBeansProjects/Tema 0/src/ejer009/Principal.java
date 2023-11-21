/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer009;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        //Entrada de datos
        System.out.println("Introduce 3 valores: ");
        double a = teclado.nextDouble();
        double b = teclado.nextDouble();
        double c = teclado.nextDouble();
        //Algoritmo a=1 b=-5 c=6
        double resultA = (-b - Math.sqrt(Math.pow(b, 2) - 4 * a * c)) / 2 * a;
        double resultB = (-b + Math.sqrt(Math.pow(b, 2) - 4 * a * c)) / 2 * a;

        //Salida de datos
        System.out.println(resultA);
        System.out.println(resultB);
    }
}
