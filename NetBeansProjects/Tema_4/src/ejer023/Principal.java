/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer023;

import java.util.ArrayList;
import java.util.Scanner;
import javax.swing.JOptionPane;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        ArrayList<Integer> numeros = new ArrayList();

        for (int i = 0; i < 100; i++) {
            numeros.add((int) (Math.random() * 21));
        }
        for (int i = 0; i < numeros.size(); i++) {
            System.out.print(numeros.get(i) + " ");
        }
        System.out.println("");
        /*System.out.println("Introduce un número: ");
        int num1 = teclado.nextInt();
        System.out.println("Introduce otro número: ");
        int num2 = teclado.nextInt();*/
        String entrada = JOptionPane.showInputDialog("Introduce el dato buscado");
        int num1 = Integer.parseInt(entrada);
        String entrada2 = JOptionPane.showInputDialog("Introduce el valor para sustituir");
        int num2 = Integer.parseInt(entrada2);

        if (numeros.indexOf(num1) == -1) {
            System.out.println("El valor no existe");
        } else {
            for (int i = 0; i < numeros.size(); i++) {
                if (numeros.get(i) == num1) {
                    System.out.print("'" + num2 + "'" + " ");
                } else {
                    System.out.print(numeros.get(i) + " ");
                }
            }
        }

    }
}
