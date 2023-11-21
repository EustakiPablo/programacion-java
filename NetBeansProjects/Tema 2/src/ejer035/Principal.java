/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer035;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*
        Escribe un programa que lea un número n e imprima una pirámide de
        números con n filas como en la siguiente figura:
        */
        String cha = "I";
        String fin = "";
        System.out.println("Introduce la altura pirámide: ");
        int alt = teclado.nextInt();
        for (int i = 1; i <= alt; i++) {
            fin = fin+cha;
            System.out.println(fin);
        }
    }
}
