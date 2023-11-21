/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer006;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        //primeros quienientos números impares
        int num = 1;
        for (int cont = 1;cont<=500 ; cont++) {
            System.out.print(num + " - ");
            num = num+2;
        }
    }
}
