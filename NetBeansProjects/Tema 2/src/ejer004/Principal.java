/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer004;

//import java.util.Scanner;
/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        //Scanner teclado = new Scanner(System.in);

        //Contar todos los números impares del 1 hasta el 500
        int num1 = 1;
        int num2 = 1;

        while (num1 < 500) {
            System.out.print(num1 + " - ");
            num1 = num1 + 2;
        }
        while (num2 < 500) {
            if (num2 % 2 == 0) {
                num2++;
            } else {
                System.out.print(num2 + " - ");
                num2++;
            }

        }
        for (int i = 1; i < 500; i = i + 2) {
            System.out.print(i + " - ");
        }
        //Muchas operaciones!
        for (int num = 1; num < 500; num++) {
            if (num%2 == 1) {
                System.out.print(num+" - ");
            }
        }

    }
}
