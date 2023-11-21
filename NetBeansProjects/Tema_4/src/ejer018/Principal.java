/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer018;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*String apellido= "López";
        String direccionCasa = "c/ Joaquín Turina, 4";
        System.out.println(apellido.charAt(0));
        System.out.println(direccionCasa.charAt(1));*/
 /*String palabra = teclado.next();
        System.out.println(palabra);
        System.out.println(palabra.length());
        System.out.println("3 posición " + palabra.charAt(3));
        System.out.println(palabra.toUpperCase());
        System.out.println(palabra.substring(4, palabra.length()));*/
        String macaco = "macaco";
        String[] juego = new String[macaco.length()];
        int intentos = 3;
        for (int i = 0; i < juego.length; i++) {
            juego[i] = "_";
        }
        
        System.out.println("Introduce una letra: ");
        String letra = teclado.next();
        boolean esta = macaco.contains(letra);

        if (esta) {
            for (int i = 0; i < juego.length; i++) {
                if (macaco.charAt(i) == letra.charAt(0)) {
                    juego[i] = letra;
                }
            }
        } else {
            intentos--;
        }

        System.out.println(Arrays.toString(juego));
    }
}
