/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer020;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce un número:");
        int num = teclado.nextInt();
        int cont = 1;
        
        
        while(num/10!=0){
            num = num/10;
            cont++;
        }
        System.out.println(cont);
    }
    
}
