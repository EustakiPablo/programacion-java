/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer019;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        String nombre[] = {"Facundo Campazzo","Walter Tavares", "GabrielDeck", "Dzanan Musa", "Alberto Abalde Diaz", "Mario Hezonja","Guerschon Yabusele","Fabien Causeur","Sergio Llull","Vincent Poirier","Sergio Rodríguez Gómez","Hugo González Peña"};
        int[] dorsal = {7,22,14,31,6,11,28,1,23,17,13,9};
        double[] rebotes = {7,10,3,5,1,3,1,3,2,3,0,1};
        double[] asistencias = {7,0,1,1,2,0,0,2,1,0,1,0};
        double[] puntos = {21,1,12,12,3,11,5,12,2,8,2,0};
        
        double total = 0;
        for (int i = 0; i < asistencias.length; i++) {
            if (asistencias[i]==0) {
                System.out.println("Jugador: "+nombre[i]+"|Dorsal: "+dorsal[i]);
            }
        }
        System.out.println("");
        for (int i = 0; i < puntos.length; i++) {
            total += puntos[i];
        }
        System.out.println("");
        System.out.println("Puntos totales: "+total);
        
        total = 0;
        for (int i = 0; i < rebotes.length; i++) {
            total+=rebotes[i];
        }
        System.out.println("Media de rebotes: "+(total/rebotes.length));
        System.out.println("Máximos puntuadores: ");
        int num = (int)puntos[0];
        for (int i = 0; i < puntos.length; i++) {
            if (num<puntos[i]) {
                num=(int) puntos[i];
            }
        }
        for (int i = 0; i < puntos.length; i++) {
            if (puntos[i]==num) {
                System.out.print(nombre[i]+", ");
            }
        }
        System.out.println("");
        System.out.println("Menos asistencias:");
        int num2 = (int)asistencias[0];
        for (int i = 0; i < asistencias.length; i++) {
            if (asistencias[i]<num) {
                num2=(int)asistencias[i];
                
            }
        }
        for (int i = 0; i < asistencias.length; i++) {
            if (asistencias[i]==num2) {
                System.out.print(nombre[i]+", "+dorsal[i]+", ");
            }
        }
        
        
    }   
}
