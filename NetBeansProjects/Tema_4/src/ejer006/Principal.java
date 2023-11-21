/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer006;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        /*Hacer un programa que rellene un array con los 100 primeros números
        enteros y los muestre en pantalla en orden inverso a como se han
        introducido (orden inverso).*/
        int[] num = new int[100];
        for (int i = 0; i < num.length; i++) {
            num[i]=i+1;
            //System.out.println(num[i]);
        }
        System.out.println(Arrays.toString(num));
        for (int a = num.length-1; a >= 0; a--) {
            System.out.print(num[a]+", ");
        }
        
    }
}
