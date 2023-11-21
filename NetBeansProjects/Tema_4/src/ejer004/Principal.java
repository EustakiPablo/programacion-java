/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer004;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        String[] letra = {"X","Y","Z"};
        System.out.println("Introduce el número");
        int num = teclado.nextInt();
        System.out.println("La letra es: "+letra[num%letra.length]);
    }
}
