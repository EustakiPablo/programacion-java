/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer027;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Escribe un programa que dados dos números,
        uno real (base) y un entero positivo (exponente),
        saque por pantalla todas las potencias con base el
        numero dado y exponentes entre uno y el exponente introducido.
        No se deben utilizar funciones de exponenciación. Por ejemplo,
        si introducimos el 2 y el 5, se deberán mostrar 21, 22, 23, 24 y 25
*/
        String resultado = " ";
        System.out.println("Introduce un número:");
        int base = teclado.nextInt();
        int base2 = base;
        System.out.println("Introduce un exponente:");
        int exp = teclado.nextInt();
        for (int i = 1; i <= exp; i++) {
            resultado = resultado+"|"+base2+" ^ "+i+" = "+base;
            base = base*base2;
            
        }
        System.out.println(resultado);
    }
}
