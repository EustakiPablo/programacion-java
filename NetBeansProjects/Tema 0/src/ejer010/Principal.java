/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer010;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        //Entrada de datos
        
        double kiloPera = 1.35;
        double kiloManzana = 2.36;
        System.out.println("Introduce los kilos de peras del primer trimestre");
        double peras1 = teclado.nextDouble();
        System.out.println("Introduce los kilos de manzanas del primer trimestre");
        double manzanas1 = teclado.nextDouble();
        System.out.println("Introduce los kilos de peras del segundo trimestre");
        double peras2 = teclado.nextDouble();
        System.out.println("Introduce los kilos de manzanas del segundo trimestre");
        double manzanas2 = teclado.nextDouble();
        System.out.println("Introduce los kilos de peras del tercer trimestre");
        double peras3 = teclado.nextDouble();
        System.out.println("Introduce los kilos de manzanas del tercer trimestre");
        double manzanas3 = teclado.nextDouble();
        System.out.println("Introduce los kilos de peras del cuarto trimestre");
        double peras4 = teclado.nextDouble();
        System.out.println("Introduce los kilos de manzanas del cuarto trimestre");
        double manzanas4 = teclado.nextDouble();
        //Algoritmo
        
        double resultadoPeras = (peras1 + peras2 + peras3 + peras4) * kiloPera;
        double resultadoManzanas = (manzanas1 + manzanas2 + manzanas3 + manzanas4) * kiloManzana;
        //Valor devuelto
        
        System.out.println("Tienes " + resultadoPeras + " € en Peras");
        System.out.println("Tienes " + resultadoManzanas + " € en Manzanas");
    }
}
