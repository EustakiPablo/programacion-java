/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer022;

import java.util.ArrayList;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        ArrayList<Integer> numeros = new ArrayList();
        for (int i = 0; i < 20; i++) {
            numeros.add((int)(Math.random()*101));
        }
        System.out.println(numeros);
        int num1=numeros.get(numeros.size()-1);
        //int num2 = 0;
        int j = numeros.size()-1;
        for (int i = 0; i < numeros.size(); i++) {
            
            if (i==numeros.size()-1) {
                numeros.set(0,num1);
            }else{
                numeros.set(j,numeros.get(j-1));
                j--;
                //numeros.set(i+1, numeros.get(num1));
            }
        }
        System.out.println(numeros);
    }
}
