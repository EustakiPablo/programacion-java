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
        //Entrada de datos
        double alto;
        double ancho;
        System.out.println("Introduce el alto:");
        alto = teclado.nextDouble();
        System.out.println("Ahora introduce el ancho:");
        ancho = teclado.nextDouble();
        //Algoritmo
        double resultado;
        resultado = alto * ancho;
        double perimetro = alto * 2 + ancho * 2;
        //salida de datos
        System.out.println("El área es: " + resultado);
        System.out.println("El perímetro es: " + perimetro);
    }
}
