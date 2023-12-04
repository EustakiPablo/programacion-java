/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer031;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        String prueba = "SALAS";
        //prueba.split(prueba.length())
        //char[] salas = {'S', 'A', 'L', 'A', 'S'};
        char[] salas = prueba.toCharArray();
        char[] salas2 = salas.clone();
        int indice2 = (salas.length - 1);
        int i = 0;
        boolean palindromo = false;
        while (i < (indice2/2) && !palindromo) {
            if (salas[i] != salas2[(indice2 - i)]) {
                palindromo = true;
            }
            i++;
        }
        if (!palindromo) {
            System.out.println("Es palindromo");
        } else {
            System.out.println("No es palindromo");
        }
        
    }
}
