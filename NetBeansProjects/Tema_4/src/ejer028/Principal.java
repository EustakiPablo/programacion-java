/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer028;

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
            {' ', ' ', ' ', ' '},
            {' ', ' ', ' ', ' '},
            {' ', '3', '3', '3'},
            {' ', ' ', ' ', ' '}
        };
        char[] num = {'1', '2', '3', '4'};
        char[] eje = {'A', 'B', 'C', 'D'};
        int contadorA = 0;
        String l, n;
        int posLetra,posNumero;
        //3 * fin de partida
        boolean ganas = false;
        while (contadorA != 3) {
            System.out.println("Introduce coordenada");
            l = teclado.next();
            n = teclado.next();
            posLetra=Arrays.binarySearch(eje, l.charAt(0));
            posNumero=Arrays.binarySearch(num, n.charAt(0));
            System.out.println(posLetra+" "+posNumero);
            System.out.println(tablero[posLetra][posNumero]);
            
            if (tablero[posLetra][posNumero]=='3') {
                tablero[posLetra][posNumero]='*';
                System.out.println("Tocado");
                //contadorA++;
            }else if(tablero[posLetra][posNumero]==' '){
                tablero[posLetra][posNumero]='A';
            }
            for (int i = 0; i < tablero.length; i++) {
                System.out.println(Arrays.toString(tablero[i]));
            }
            for (int i = 0; i < tablero.length; i++) {
                for (int j = 0; j < tablero[i].length; j++) {
                    if (ganas) {
                        
                    }
                }
            }
            /*if (!Arrays.toString(tablero).contains("3")) {
                ganas = true;
            }*/
            
        }

    }
}
