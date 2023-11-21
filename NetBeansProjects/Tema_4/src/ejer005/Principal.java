/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer005;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int[] goles = {2,3,1,2,2,1,2,3,4,1,2};
        int end = 0;
        
        for (int i = 0; i < goles.length; i++) {
            end += goles[i];
        }
        System.out.println("Jornadas del real madrid: " + goles.length);
        System.out.println("Goles a favor: "+ end);
        System.out.println("La media de goles es: "+ (double) end/goles.length);
    }
}
