/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer032;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) throws InterruptedException {
        Scanner teclado = new Scanner(System.in);
        LinkedList<String> lista = new LinkedList();
        lista.add("Documento1");
        lista.add("Documento2");
        lista.add("Documento3");
        System.out.println(lista);
        System.out.println("-------------------------------");
        System.out.println("Procesando");
        System.out.println("-------------------------------");
        while(lista.peek()!=null){
            System.out.println("Quieres imprimir?");
            String eleccion = teclado.next();
            if (eleccion.charAt(0)=='y') {
                System.out.println("Imprimiendo");
                Thread.sleep(1000);
            }else{
                System.out.println("\"El documento no se va a imprimir\"");
            }
            lista.poll();
            //System.out.println(lista);
        }
        System.out.println("Fin de la impresión");
        
    }
}
