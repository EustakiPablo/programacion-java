/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer003;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        String[] letras = {"T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B", "N", "J", "Z", "S", "Q", "V", "H", "L", "C", "K", "E"};
        System.out.println("Introduce el número del DNI");
        int num = teclado.nextInt();
        if (num <= 99999999 && num > 10000000) {
            System.out.println("La letra es: " + letras[num % 23]);
        } else {
            System.out.println("No es un número válido");
        }

    }
}
