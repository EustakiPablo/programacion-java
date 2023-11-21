/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer005;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce horas, minutos y segundos");
        int h = teclado.nextInt();
        int m = teclado.nextInt();
        int s = teclado.nextInt();
        /*s = s + 1;
        if (s >= 60) {
            s = s - 60;
            m = m + 1;
            if (m >= 60) {
                m = m - 60;
                h = h + 1;
                //System.out.println("Horas: " + h + " Minutos: " + m + " Segundos: " + s);
            }
        }*/
        if (h == 23 && m == 59 && s == 59) {
            h = 0;
            m = 0;
            s = 0;
        } else if (m == 59 && s == 59) {
            s = 0;
            m = 0;
            h = h + 1;
        } else if (s == 59) {
            s = 0;
            m = m + 1;
        } else {
            s = s + 1;
        }
        System.out.println("Horas: " + h + " Minutos: " + m + " Segundos: " + s);
    }
}
