/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer025;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        ArrayList<Integer> numeros = new ArrayList();
        for (int i = 0; i < 20; i++) {
            numeros.add((int)(Math.random()*401));
        }
        System.out.println(numeros);
        System.out.println("Qué múltiplos");
        int num = teclado.nextInt();
        while(num!=5&&num!=7){
            System.out.println("Tiene que ser 6 o 7.");
            num = teclado.nextByte();
        }
        //System.out.println("bien");
        
        for (int i = 0; i < numeros.size(); i++) {
            if (numeros.get(i)%num==0) {
                System.out.print("["+numeros.get(i)+"] ");
            }else{
                System.out.print(numeros.get(i)+" ");
            }
        }
    }
}
