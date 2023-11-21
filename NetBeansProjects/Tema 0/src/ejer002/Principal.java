/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer002;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        //Entrada de datos
        System.out.println("Introduce el lado");
        double lado;
        lado = teclado.nextDouble();
        System.out.println("Has introducido el valor: " + lado);
        //Algoritmo
        double area;
        area = lado * lado;
        //Salida de datos
        System.out.println("El resultado es: " + area);
    }

}
