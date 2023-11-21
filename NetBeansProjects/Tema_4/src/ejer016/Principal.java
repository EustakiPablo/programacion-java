/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer016;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        //int[]numeros = {2,3,3,1};
        int[] numeros2 = {1, 3, 4, 3, 1};
        int indice = numeros2.length - 1;
        boolean es = false;
        int i = 0;
        while (i < numeros2.length && es == false) {
            if (numeros2[i]!=numeros2[indice]) {
                es=true;
            }
            indice--;
            i++;
        }
        /*for (int i = 0; i < numeros2.length; i++) {
            if (numeros2[i]!=numeros2[indice]) {
                es=true;
            }
            indice--;
        }*/
        if (es==false) {
            System.out.println("Es capicua");
        }else{
            System.out.println("No es capicua");
        }
    }
}
