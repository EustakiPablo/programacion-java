/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer007;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        //
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce un número del 1 al 99:");
        String letras = "";
        int n = teclado.nextInt();
        int decenas = n / 10;
        int unidades = n % 10;
        switch (decenas) {
            case 1:
                letras = letras + "dieci";
            case 2:
                letras = letras + "veinti";
                break;
            case 3:
                letras = letras + "trenta y ";
                break;
            case 4:
                letras = letras + "cuarenta y ";
                break;
            case 5:
                letras = letras + "cincuenta y ";
                break;
            case 6:
                letras = letras + "sesenta y ";
                break;
            case 7:
                letras = letras + "setenta y ";
                break;
            case 8:
                letras = letras + "ochenta y ";
                break;
            case 9:
                letras = letras + "noventa y ";
                break;
        }
        switch (unidades) {
            case 1:
                if (decenas == 1) {
                    letras = "once";
                } else {
                    letras = letras + "uno";
                }
                break;
            case 2:
                if (decenas == 1) {
                    letras = "doce";
                } else {
                    letras = letras + "dos";
                }
                break;
            case 3:
                if (decenas == 1) {
                    letras = "trece";
                } else {
                    letras = letras + "tres";
                }
                break;
            case 4:
                if (decenas == 1) {
                    letras = "catorce";
                } else {
                    letras = letras + "cuatro";
                }
                break;
            case 5:
                if (decenas == 1) {
                    letras = "quince";
                } else {
                    letras = letras + "cinco";
                }
                break;
            case 6:
                letras = letras + "seis";
                break;
            case 7:
                letras = letras + "siete";
                break;
            case 8:
                letras = letras + "ocho";
                break;
            case 9:
                letras = letras + "nueve";
                break;
            case 0:
                switch (decenas) {
                    case 1:
                        letras = "diez";
                        break;
                    case 2:
                        letras = "veinte";
                        break;
                    case 3:
                        letras = "treinta";
                        break;
                    case 4:
                        letras = "cuarenta";
                        break;
                    case 5:
                        letras = "cincuenta";
                        break;
                    case 6:
                        letras = "sesenta";
                        break;
                    case 7:
                        letras = "setenta";
                        break;
                    case 8:
                        letras = "ochenta";
                        break;
                    case 9:
                        letras = "noventa";
                        break;
                    case 0:
                        letras = "cero";
                        break;
                }

        }

        System.out.println(letras);

    }
}
