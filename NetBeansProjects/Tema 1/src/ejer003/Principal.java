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
        int num = teclado.nextInt();
        if (num >= 0 && num <= 9) {
            System.out.println("1 cifra");
        } else {
            if (num >=10 && num <= 99) {
                System.out.println("2 cifras");
            } else {
                if (num >= 100 && num <= 999) {
                    System.out.println("3 cifras");
                } else {
                    if (num>=1000 && num <= 9999) {
                        System.out.println("4 cifras");
                    } else {
                        if (num >= 10000 && num <= 99999) {
                            System.out.println("5 cifras");
                        } else{
                            System.out.println("El número está fuera de rango");
                        }
                    }
                }
            }
        }

    }
}
