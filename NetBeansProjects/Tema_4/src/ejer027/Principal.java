/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer027;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        char[][] tablero = {
            {'X','X','X'},
            {' ','X',' '},
            {'X',' ','X'}
        };
        boolean ganas = false;
        System.out.println("Líneas");
        for (int i = 0; i < tablero.length; i++) {
            ganas = false;
            for (int j = 0; j < tablero[i].length; j++) {
                if (tablero[i][j]=='X') {
                    ganas = true;
                }
            }
            System.out.println("fila "+i+": "+ganas);
        }
        System.out.println("Diagonales");
        boolean ganas2 = true;
        ganas = true;
        for (int i = 0; i < tablero.length; i++) {
            if (tablero[i][i]!='X') {
                ganas = false;
            }
            if (tablero[i][(tablero.length-1)-i]!='X') {
                ganas2 = false;
            }
            
        }
        System.out.println("diagonal 1: "+ganas);
        System.out.println("diagonal 2: "+ganas2);
    }
}
