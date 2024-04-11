/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer3extra;

import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Ejercicio3extra {
    public static void main(String[] args) {
        /*Dado un vector de 100 elementos (que se introducirá por teclado),
        verifica si está ordenado de forma ascendente, de menor a mayor, que devuelva sí o no*/
        Scanner teclado = new Scanner(System.in);
        int[] numeros = new int[100];
        int j = 0;
        
        boolean mayorQue = false;
        for (int i = 0; i < numeros.length; i++) {
            System.out.println("Introduce un valor: ");
            numeros[i]=teclado.nextInt();
            numeros[i]=(int)(Math.random()*101);
        }
        int mayor = numeros[0];
        while(j<numeros.length&&!mayorQue){
            if (numeros[j]<mayor) {
                mayorQue=!mayorQue;
            }else{
                mayor=numeros[j];
            }
            j++;
        }
        if (mayorQue) {
            System.out.println("No");
        }else if(!mayorQue){
            System.out.println("Si");
        }
    }
}
