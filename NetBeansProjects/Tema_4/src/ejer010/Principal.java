/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer010;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        int[] precios = {34, 65, 6, 3, 143, 56};
        int[] precios2 = {34, 65, 6, 3, 143, 56};
        if (Arrays.equals(precios, precios2)) {
            System.out.println("Son iguales");
        } else {
            System.out.println("Son diferentes");
        }
        if (precios == precios2) {
            System.out.println("Misma dirección de memoria");
        } else {
            System.out.println("Distinta dirección de memoria");
        }
        int[] clon1 = Arrays.copyOf(precios, precios.length);
        //System.out.println(Arrays.toString(clon1));
        int[] clon2 = Arrays.copyOf(precios2, precios2.length);
        Arrays.sort(clon1);
        Arrays.sort(clon2);
        /*int[] clon3 = precios.clone();
        System.out.println(Arrays.toString(clon3));*/
    }
}
