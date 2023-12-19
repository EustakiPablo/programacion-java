/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer029;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*char[][] tablero = {
            {' ',' ',' ',' ',' ',' ',' ',' '},
            {' ',' ',' ',' ',' ',' ',' ',' '},
            {' ',' ',' ',' ',' ',' ',' ',' '},
            {' ',' ',' ','C',' ',' ',' ',' '},
            {' ',' ',' ',' ',' ',' ',' ',' '},
            {' ',' ',' ',' ',' ',' ',' ',' '},
            {' ',' ',' ',' ',' ',' ',' ',' '},
            {' ',' ',' ',' ',' ',' ',' ',' '}
        };*/
        char[][] tablero = new char[8][8];

        for (int i = 0; i < tablero.length; i++) {
            for (int j = 0; j < tablero[i].length; j++) {
                tablero[i][j] = ' ';
            }
        }
        int posF = 4;
        int posC = 4;

        tablero[posF][posC] = 'C';
        /*7(+2+1) 5(+2-1) 6(+1-2) 8(+1+2)*/
 /*1(-1+2) 4(-1-2) 3(-2-1) 2(-2+1)*/
        for (int i = 0; i < tablero.length; i++) {
            System.out.println(Arrays.toString(tablero[i]));
        }
        /*while movimiento != 9*/
        //Movimento 1
        System.out.println("");
        if (posF - 1 >= 0 && posC + 2 <= 7) {
            tablero[posF - 1][posC + 2] = '1';
        }
        if (posF - 2 >= 0 && posC + 1 <= 7) {
            tablero[posF - 2][posC + 1] = '2';
        }
        if (posF - 2 >= 0 && posC - 1 >= 0) {
            tablero[posF - 2][posC - 1] = '3';
        }
        if (posF - 1 >= 0 && posC - 2 >= 0) {
            tablero[posF - 1][posC - 2] = '4';
        }
        if (posF + 1 <= 7 && posC - 2 >= 0) {
            tablero[posF + 1][posC - 2] = '5';
        }
        if (posF + 2 <= 7 && posC - 1 >= 0) {
            tablero[posF + 2][posC - 1] = '6';
        }
        if (posF + 2 <= 7 && posC + 1 <= 7) {
            tablero[posF + 2][posC + 1] = '7';
        }
        if (posF + 1 <= 7 && posC + 2 <= 7) {
            tablero[posF + 1][posC + 2] = '8';
        }

        for (int i = 0; i < tablero.length; i++) {
            System.out.println(Arrays.toString(tablero[i]));
        }
        System.out.println("Introduce el número del movimiento");
        String movimiento = teclado.next();
        //centinela para comprobar movimiento
        //hacer movimiento
        switch (movimiento.charAt(0)) {
            case '1':
                tablero[posF - 1][posC + 2] = 'C';
                break;
            case '2':
                tablero[posF - 2][posC + 1] = 'C';
                break;
            case '3':
                tablero[posF - 2][posC - 1] = 'C';
                break;
            case '4':
                tablero[posF - 1][posC - 2] = 'C';
                break;
            case '5':
                tablero[posF + 1][posC - 2] = 'C';
                break;
            case '6':
                tablero[posF + 2][posC - 1] = 'C';
                break;
            case '7':
                tablero[posF + 2][posC + 1] = 'C';
                break;
            case '8':
                tablero[posF + 1][posC + 2] = 'C';
                break;
        }
        //limpiar el tablero
        for (int i = 0; i < tablero.length; i++) {
            for (int j = 0; j < tablero[i].length; j++) {
                if (tablero[i][j]!='C') {
                    tablero[i][j]=' ';
                }
            }
        }
        
        //mostrar
        for (int i = 0; i < tablero.length; i++) {
            System.out.println(Arrays.toString(tablero[i]));
        }
    }
}
