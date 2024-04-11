/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Ejercicio1;

//import static java.awt.PageAttributes.MediaType.C;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        Scanner teclado = new Scanner (System.in);
        File fichero = new File ("C:\\Users\\FP\\Desktop", "correo.txt");
        FileReader lectura = new FileReader(fichero);
        
        BufferedReader cursor = new BufferedReader(lectura);
        String linea;

        System.out.println("La información del correo es: ");
        
        while ((linea = cursor.readLine())!=null){
            if(linea.startsWith("Subject")){
             System.out.println("Asunto: " + linea.substring(8, linea.length()));

            }
            if(linea.startsWith("From")){
                System.out.println("Emisor: " + linea.substring(4, linea.length()));
            }
            
            if(linea.startsWith("To")){
                System.out.println("Remitente: " + linea.substring(3, linea.length()));
            }
            
            if(linea.startsWith("Message Body")){
                System.out.println("El mensaje es: " + linea.substring(12, linea.length()));
            }
        }
        teclado.close();
        lectura.close();
        cursor.close();

    }
    
}
