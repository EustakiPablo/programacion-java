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
        int edad;
        do {
            System.out.println("Dime tu edad");
            edad = teclado.nextInt();
        } while (edad < 18);
        System.out.println("Puedes pasar");
    }
}
