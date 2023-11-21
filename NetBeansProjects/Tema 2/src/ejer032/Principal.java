/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer032;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        
        int num = 12345;
        int result = (int) (Math.random()*100000);
        int cont = 0;
        while (num != result){
            result = (int) (Math.random()*100000);
            cont++;
            
        }
        int anyof = cont/365;
        int mesf = (cont%365)/30;
        int diaf = mesf%30;
        
        
        
        System.out.println("Has ganado y tan solo has tardado "+anyof+" años, "+mesf+"meses y "+diaf+" días.");
        
    }
}
