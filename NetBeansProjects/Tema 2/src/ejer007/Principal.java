/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer007;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Si introduces el valor 0 el programa dejará de ejecutarse.");
        System.out.println("Introduce un valor: ");
        int num = teclado.nextInt();
        
        while(num!=0){
            System.out.println("El cuadrado del número introducido es: "+Math.pow(num, 2));
            System.out.println("Introduce otro número");
            num = teclado.nextInt();
        }
        
    }
}
