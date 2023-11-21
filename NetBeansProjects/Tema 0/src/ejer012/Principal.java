/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer012;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        //Entrada de datos
        System.out.println("Introduce un valor en milímetros");
        double milimetros = teclado.nextDouble();
        System.out.println("Introduce un valor en centimetros");
        double centimetros = teclado.nextDouble();
        System.out.println("Introduce un valor en metros");
        double metros = teclado.nextDouble();
        
        //Algoritmo
        double centFinal = (milimetros/10)+centimetros+(metros*100);
        //Salida
        System.out.println("Has indicado: "+centFinal);
    }
}
