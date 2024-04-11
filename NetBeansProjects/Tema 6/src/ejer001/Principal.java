/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer001;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) throws IOException {
        File fichero = new File("catador.txt");
        FileWriter ficheroEscritura = new FileWriter(fichero);
    }
}
