/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer012;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        String[] dias = {"Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"};
        System.out.println("Introduce el día de la semana");
        int num = teclado.nextInt();
        if (num < 1 || num > 7) {
            System.out.println("No es un número correcto");
        } else {
            System.out.println("El día es: "+dias[num-1]);
        }
    }
}