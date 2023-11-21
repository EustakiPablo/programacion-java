/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer024;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        
        /*Escribe un programa que muestre los n primeros términos
        de la serie de Fibonacci. El primer término de la serie de Fibonacci es 1,
        el segundo es 1 y el resto se calcula sumando los dos anteriores, por lo
        que tendríamos que los términos son 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144…
        El número n se debe introducir por teclado.
*/
        System.out.println("Introduce un número:");
        int num = teclado.nextInt();
        int fibo = 1;
        int contador = 1;
        int a = 1;
        while(fibo<=num){
            System.out.println(fibo);
            
            fibo = contador + a;
            contador = a;
            a = fibo;
        }
        
    }
}
