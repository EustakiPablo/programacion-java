/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer008;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        String letras = "TRWAGMYFPDXBNJZSQVHLCKE";
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce el número de tu DNI");
        int num = teclado.nextInt();
        
        int numLetra = num%23;
        System.out.println("La letra de tu DNI es: "+ letras.charAt(numLetra));
        System.out.println("Tu DNI es: "+num+letras.charAt(numLetra));
    }
}
