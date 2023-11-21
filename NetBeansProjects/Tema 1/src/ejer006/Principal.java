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
        System.out.println("Dime día, mes y año");
        int d = teclado.nextInt();
        int m = teclado.nextInt();
        int a = teclado.nextInt();

        if (m == 2 && d == 28) {
            d = 1;
            m = m + 1;
            System.out.println(d + "/" + m + "/" + a);
        } else if ((m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10) && d == 31) {
            d = 1;
            m = m + 1;
            System.out.println(d + "/" + m + "/" + a);
        } else if ((m == 4 || m == 6 || m == 9 || m == 11) && d == 30) {
            d = 1;
            m = m + 1;
            System.out.println(d + "/" + m + "/" + a);
        } else if (m == 12 && d == 31) {
            d = 1;
            m = 1;
            a = a + 1;
            System.out.println(d + "/" + m + "/" + a);
        } else {
            d = d + 1;
            System.out.println(d + "/" + m + "/" + a);
        }

    }
}
