/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer017;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        int[] numero = new int[20];
        int[] cuadrado = new int[20];
        int[] cubo = new int[20];
        for (int i = 0; i < numero.length; i++) {
            numero[i] = (int) (Math.random()*101);
            cuadrado[i] =(int)(Math.pow(numero[i],2));
            cubo[i] = (int)(Math.pow(numero[i],3));
        }
        System.out.println("Números: "+Arrays.toString(numero));
        System.out.println("Cuadrado: "+Arrays.toString(cuadrado));
        System.out.println("Cubo: "+Arrays.toString(cubo));
    }
}
