/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer011;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        //Pedir número de segundos
        //Entrada de datos
        int segundosIntr = teclado.nextInt();

        //Algoritmo
        int horas = segundosIntr / 60 / 60;
        int mins = horas % 60;
        int segs = segundosIntr % 60;

        //Salida
        System.out.println(horas + "H " + mins + "m " + segs + "s");

    }
}
