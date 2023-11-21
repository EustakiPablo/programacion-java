/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer009;

import java.util.Arrays;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        String[] alumnos = {"María", "Luis", "Alex", "Ana"};
        System.out.println(Arrays.toString(alumnos));

        Arrays.sort(alumnos);
        System.out.println(Arrays.toString(alumnos));
        int posicionAna = Arrays.binarySearch(alumnos, "Ana");
        if (posicionAna == -1) {
            System.out.println("No existe ese alumno");
        } else {
            System.out.println("El alumno está en esta posición: " + posicionAna);
        }

    }
}
