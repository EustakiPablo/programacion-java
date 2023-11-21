/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer033;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        /*Muestra por pantalla todos los números primos entre 2 y 100,
        ambos incluidos.*/
        for (int numero = 2; numero < 100; numero++) {
            int contador = 0;
            for (int i = numero; i >= 1; i--) {
                if (numero % i == 0) {
                    contador++;
                }
            }
            if (contador == 2) {
                System.out.println(numero);
            }
        }
    }
}
