/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer006;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Por favor, introduce tu edad:");
        int edad = teclado.nextInt();
        //System.out.println(edad);
        int nextYear = edad + 1;
        System.out.println("El año que viene tendrás " + nextYear + " años.");
    }
}
