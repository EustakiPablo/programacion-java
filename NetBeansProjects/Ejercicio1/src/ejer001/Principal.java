/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer001;


import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        char[][] tablero = {
            {'_', '_', '_', '_', '_', '_', '_', '_'},
            {'_', '_', '_', '_', '_', '_', '_', '_'},
            {'_', '_', '_', '_', '_', '_', '_', '_'},
            {'_', '_', '_', '_', '_', '_', '_', '_'},
            {'_', '_', '_', '_', '_', '_', '_', '_'},
            {'_', '_', '_', '_', '_', '_', '_', '_'},
            {'_', '_', '_', '_', '_', '_', '_', '_'},
            {'_', '_', '_', '_', '_', '_', '_', '_'}
        };
        System.out.println(Arrays.toString(tablero));
        
        System.out.println("Escribe la posición en la que quieres que aparezca el Rey");
        int posInicial = teclado.nextInt();
        
        int peon = (int) (Math.random()*64);
        System.out.println("La posición del peon es: "+peon);
        
        
        System.out.println("Escribe una posición a la que quieres dirigierte");
        int move = teclado.nextInt();
        
        //movimiento 1
        if (move == 1) {
            
        }
        //movimiento 2
        if (move == 2) {
            
        }
        //movimiento 3
        if (move == 3) {
            
        }
        //movimiento 4
        if (move == 4) {
            
        }
        //movimiento 5
        if (move == 5) {
            
        }
        //movimiento 6
        if (move == 6) {
            
        }
        //movimiento 7
        if (move == 7) {
            
        }
        //movimiento 8
        if (move == 8) {
            
        }
        
    }
}
