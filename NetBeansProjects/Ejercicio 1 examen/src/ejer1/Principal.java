/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer1;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        //Ejercicio 1
        Scanner teclado = new Scanner(System.in);
        boolean ganas = false;
        int contador = 0;
        char[][] tablero = new char[8][8];
        for (int i = 0; i < tablero.length; i++) {
            for (int j = 0; j < tablero[i].length; j++) {
                tablero[i][j] = ' ';
            }
        }
        int yP = (int) (Math.random() * 8);
        int xP = (int) (Math.random() * 8);
        //tablero[(int) (Math.random() * 8)][(int) (Math.random() * 8)] = 'P';
        int y = 6;
        int x = 4;
        tablero[y][x] = 'R';
        /*for (int i = 0; i < tablero.length; i++) {
            System.out.println(Arrays.toString(tablero[i]));
        }*/
        //el 9 cierra el programa
        boolean cerrar = false;
        int movimiento = 0;
        while (!cerrar) {
            //mostrar movimiento
            
            if (y - 1 >= 0) {
                tablero[y - 1][x] = '1';
            }
            if (y - 1 >= 0 && x + 1 < 8) {
                tablero[y - 1][x + 1] = '2';
            }
            if (x + 1 < 8) {
                tablero[y][x + 1] = '3';
            }
            if (x + 1 < 8 && y + 1 < 8) {
                tablero[y + 1][x + 1] = '4';
            }
            if (y + 1 < 8) {
                tablero[y + 1][x] = '5';
            }
            if (y + 1 < 8 && x - 1 >= 0) {
                tablero[y + 1][x - 1] = '6';
            }
            if (x - 1 >= 0) {
                tablero[y][x - 1] = '7';
            }
            if (x - 1 >= 0 && y - 1 >= 0) {
                tablero[y - 1][x - 1] = '8';
            }
            tablero[yP][xP]='P';
            for (int i = 0; i < tablero.length; i++) {
                System.out.println(Arrays.toString(tablero[i]));
            }
            //movimiento
            System.out.println("Introduce el movimiento que quieres realizar");
            System.out.println("Para salir del programa usa el número 9.");
            movimiento = teclado.nextInt();

            switch (movimiento) {
                case 1:
                    tablero[y][x] = ' ';
                    tablero[y - 1][x] = 'R';
                    y = y - 1;
                    break;
                case 2:
                    tablero[y][x] = ' ';
                    tablero[y-1][x+1] = 'R';
                    y=y-1;
                    x=x+1;
                    break;
                case 3:
                    tablero[y][x] = ' ';
                    tablero[y][x+1] = 'R';
                    x= x+1;
                    break;
                case 4:
                    tablero[y][x] = ' ';
                    tablero[y+1][x+1]='R';
                    y=y+1;
                    x=x+1;
                    break;
                case 5:
                    tablero[y][x] = ' ';
                    tablero[y+1][x] = 'R';
                    y=y+1;
                    break;
                case 6:
                    tablero[y][x] = ' ';
                    tablero[y+1][x-1]='R';
                    y=y+1;
                    x=x-1;
                    break;
                case 7:
                    tablero[y][x]=' ';
                    tablero[y][x-1]='R';
                    x=x-1;
                    break;
                case 8:
                    tablero[y][x]=' ';
                    tablero[y-1][x-1]='R';
                    y=y-1;
                    x=x-1;
                    break;
                case 9:
                    cerrar = true;
                    break;
            }
            //limpiar tablero
            for (int i = 0; i < tablero.length; i++) {
                for (int j = 0; j < tablero[i].length; j++) {
                    if (tablero[i][j]=='1'||tablero[i][j]=='2'||tablero[i][j]=='3'||tablero[i][j]=='4'||tablero[i][j]=='5'||tablero[i][j]=='6'||tablero[i][j]=='7'||tablero[i][j]=='8') {
                        tablero[i][j]= ' ';
                    }
                }
            }
            //comprobar si ha ganado
            if (x==xP&&y==yP) {
                cerrar=true;
                ganas=true;
            }
        }
        
        
        for (int i = 0; i < tablero.length; i++) {
            System.out.println(Arrays.toString(tablero[i]));
        }
        if (ganas) {
            System.out.println("Has ganado!");
        }else{
            System.out.println("Has cerrado el programa, intentalo de nuevo.");
        }
    }
}
