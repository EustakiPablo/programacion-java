/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer037;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int num = teclado.nextInt();
        int factorial = 1;
        for (int i = num; i != 1; i--) {
            factorial = factorial*i;
        }
        System.out.println(factorial);
    }
}
