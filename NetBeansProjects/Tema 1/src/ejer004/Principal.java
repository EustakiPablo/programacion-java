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
        //dia mes y año que estén en rango valido
        System.out.println("Introduce día, mes y año:");
        int dia = teclado.nextInt();
        int mes = teclado.nextInt();
        int anyo = teclado.nextInt();
        /*if (dia > 0 && dia <= 31) {
            System.out.println("El día " + dia + " es válido.");
        } else {
            System.out.println("El día " + dia + " no es válido.");
        }
        if (mes > 0 && mes <= 12) {
            System.out.println("El mes " + mes + " es válido.");
        } else {
            System.out.println("El mes " + mes + " no es válido.");
        }
        if (anyo > 0 && anyo <= 2023) {
            System.out.println("El año " + anyo + " es válido");
        } else {
            System.out.println("El año " + anyo + " no es válido.");
        }*/

        if (mes == 2 && dia <= 28 && dia >= 1 && anyo >= 1) {
            System.out.println("Año válido");
        } else if ((mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12) && (dia >= 1 && dia <= 31) && anyo >= 1) {
            System.out.println("Año válido");
        } else if ((mes == 4 || mes == 6 || mes == 9 || mes == 11) && (dia >= 1 && dia <= 30) && anyo >= 1) {
            System.out.println("Año válido");
        } else {
            System.out.println("Año no valido");
        }
    }
}
