/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer001;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static String contarLetras(String palabra){
        int numeroLetras = palabra.length();
        return "La palabra "+palabra+" tiene "+numeroLetras+" letras.";
    }

    public static void main(String[] args) {
        //Scanner teclado = new Scanner(System.in);
        //System.out.println("Introduce una palabra");
        String hola = /*teclado.next()*/"Buenas";
        System.out.println(contarLetras(hola));
    }
}
