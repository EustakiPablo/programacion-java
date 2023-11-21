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
        System.out.println("Introduce un número");
        int num = teclado.nextInt();
        int a = 0;
        //bucles 
        
        while (a<num){
            System.out.println("Hola!");
            a++;
        }
    }
}
