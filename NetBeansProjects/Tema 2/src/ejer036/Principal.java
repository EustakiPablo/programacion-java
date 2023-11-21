/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer036;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*Realiza un programa que pida un número por teclado y
        que luego muestre ese número al revés. CON INT!!!*/
        System.out.println("Introduce un número");
        int num = teclado.nextInt();
        int num2 = num;
        int largo = 0;
        
        while(num2!=0){
            num2 = num2/10;
            largo++;
        }
        
        for (int i = (int) Math.pow(10, largo); i >= 1; i=i/10) {
            
            int cifra = num%i;
            System.out.println(cifra);
        }
        //System.out.println(largo);
    }
}
