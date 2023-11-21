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
        System.out.println("Introduce tu año de nacimiento:");
        int nacimiento = teclado.nextInt();
        System.out.println("Introduce el año actual:");
        int today = teclado.nextInt();
        int edad = today - nacimiento;
        System.out.println("Tu edad es: " + edad);

    }
}
