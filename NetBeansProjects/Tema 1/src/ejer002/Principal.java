/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer002;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Indícame el mes:");
        int mes = teclado.nextInt();
        switch (mes) {
            case 1, 3, 5, 7, 8, 10, 12:
                System.out.println("Tiene 31 días");
                break;
            case 2:
                System.out.println("Tiene 28 días");
                break;
            case 4, 6, 9, 11:
                System.out.println("Tiene 30 días");
                break;
            default:
                System.out.println("No es un mes");
        }
    }
}
