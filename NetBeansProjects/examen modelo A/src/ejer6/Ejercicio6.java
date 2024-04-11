/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer6;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Ejercicio6 {
    public static void main(String[] args) {
        /*Vectores paralelos. Se pretende emular el almacén de una tienda
        virtual a través de vectores paralelos. Para ello se dispone de los siguientes arrays*/
        String[] material = {"Lápiz","Bolígrafo","Sacapuntas","Borrador","Tiza"};
        double[] precio = {1.95,9.99,0.99,0.89,4.99};
        int[] stock = {200,145,300,500,1000};
        //EJERCICIO1
        System.out.println("En el almacén hay: ");
        for (int i = 0; i < material.length; i++) {
            System.out.println(material[i]+" "+stock[i]);
        }
        //EJERCICIO2
        for (int i = 0; i < material.length; i++) {
            System.out.println("Si se vendieran todos los "+material[i]+" la tienda recibiría "+(double)(stock[i]*precio[i]));
        }
        //EJERCICIO3
        System.out.println("Los productos con un stock menor a 250 son:");
        for (int i = 0; i < material.length; i++) {
            if (stock[i]<250) {
                System.out.println(material[i]);
            }
        }
        //EJERCICIO4
        double[] nuevosPrecios = new double[precio.length];
        for (int i = 0; i < nuevosPrecios.length; i++) {
            nuevosPrecios[i]=(precio[i]*10/100)+precio[i];
        }
        System.out.println(Arrays.toString(nuevosPrecios));
    }
}
