/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer008;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        /*Hacer un programa que cree un array cuyo tamaño se pedirá por teclado
        y cuyo contenido serán números aleatorios entre 1 y 300. Posteriormente
        se creara otro array que guardara aquellos números del primer array que
        acaben en un dígito que se indicara por teclado (se debe controlar que
        se introduce un numero correcto). Finalmente, mostrar por pantalla los
        dos arrays.

*/
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce un valor para el tamño del array: ");
        int numTeclado = teclado.nextInt();
        System.out.println("Introduce el valor del número para el segundo array: ");
        int numTeclado2 = teclado.nextInt();
        //int contador = 0;
        int[] array = new int[numTeclado];
        int[] array2 = new int[numTeclado];
        int num = 0;
        for (int i = 0; i < array.length; i++) {
            array[i] = (int) (Math.random()*301);
        }
        System.out.println(Arrays.toString(array));
        while(numTeclado2 <0 || numTeclado2 >9){
            System.out.println("Numero no válido, introduce otro: ");
            numTeclado2 = teclado.nextInt();
        }
        
        for (int i = 0; i < array.length; i++) {
            if(array[i]%10==numTeclado2){
                array2[num]=array[i];
                num++;
            }
            
        }
        int[] array3 = Arrays.copyOf(array2, num);
        System.out.println(Arrays.toString(array3));
    }
}
