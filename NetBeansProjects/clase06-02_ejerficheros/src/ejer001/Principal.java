/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer001;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) throws IOException {
        Scanner teclado=new Scanner(System.in);
        //Pedir datos
        /*System.out.println("Cual es el nombre");
        String nombre=teclado.next();
        System.out.println("Cuaando nacite");
        String fecha=teclado.next();
        System.out.println("Donde vives");
        String direccion=teclado.next();
        //Crear archivo de texto
        FileWriter archivo=new FileWriter("prueba.txt");
        PrintWriter escritor = new PrintWriter(archivo);
        //Insertar en el archivo
        escritor.println("Nombre: "+nombre);
        escritor.println("Fecha de nacimiento: "+fecha);
        escritor.println("Dirección: "+direccion);
        //Cerrar archivo
        escritor.close();*/
        
        File fichero=new File("C:\\Users\\FP\\Desktop","quijote.txt");
        if(!fichero.exists()){
            System.out.println("No existe");
        }else{
            System.out.println("Existe");
            FileReader lectura=new FileReader(fichero);
            BufferedReader buffer=new BufferedReader(lectura);            
            
            String nombreFichero="fichero";
            String extension=".txt";
            int contador=1;
            String linea;
            while((linea=buffer.readLine())!=null){
            String nombreEntero=nombreFichero+contador+extension;
            FileWriter escritura=new FileWriter(nombreEntero);
            escritura.write(linea);
            escritura.close();
            contador++;
            }
        }
    }
        
}
