/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer011;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        int[] array = {3, 9, 5, 8, 9};
        int[] array2 = {7, 1, 2, 1, 2};
        int aumento = 0;
        int[] array3 = new int[array.length];
        for (int i = array.length - 1; i >= 0; i--) {
            if (i == 0) {
                array3[i] = array[i] + array2[i] + aumento;
            } else if (array[i] + array2[i] + aumento >= 10) {
                array3[i] = array[i] + array2[i] + aumento - 10;
                aumento = 1;
            } else {
                array3[i] = array[i] + array2[i] + aumento;
                aumento = 0;
            }

        }
        System.out.println(Arrays.toString(array3));
    }
}
