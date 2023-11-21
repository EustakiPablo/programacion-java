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
        System.out.println("Dime la edad: ");
        int edad = teclado.nextInt();

        while (edad < 18) {
            System.out.println("Eres mu pequeñ@");
            System.out.println("Dime la edad: ");
            edad = teclado.nextInt();
        }
        System.out.println("Puedes pasar.");
    }
}
