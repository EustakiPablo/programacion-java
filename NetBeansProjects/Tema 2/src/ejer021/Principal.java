/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer021;

//import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        //Scanner teclado = new Scanner(System.in);
        int a = 1;
        for (int numero = 1; numero <= 1000000; numero++) {
            int contador=0;
            for (int i = numero; i >= 1; i--) {
                if (numero % i ==0) {
                    contador++;
                }
            }
            if (contador == 2) {
                System.out.println(numero);
            }
        }

        }
    }

