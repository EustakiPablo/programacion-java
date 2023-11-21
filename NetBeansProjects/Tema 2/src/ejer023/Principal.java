/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer023;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Escribe un programa que muestre en tres columnas,
        el cuadrado y el cubo de los 5 primeros números enteros a partir de
        uno que se introduce por teclado.
*/
        System.out.println("Introduce un número");
        int num = teclado.nextInt();
        int cuad = 0;
        int cub = 0;
        int a = 0;
        for (int contador = 0; contador < 5; contador++) {
            a = num + contador;
            cuad = (int) Math.pow(a, 2);
            cub = (int) Math.pow(a, 3);
            System.out.println("Número: "+a+" Cuadrado: "+cuad+" Cubo: "+cub);
        }
        
        
    }
}
