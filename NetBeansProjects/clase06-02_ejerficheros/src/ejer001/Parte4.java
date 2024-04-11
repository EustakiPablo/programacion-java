/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer001;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Parte4 {
    public static void main(String[] args) throws FileNotFoundException, IOException {
        File fichero=new File("C:\\Users\\FP\\Desktop","quijote.txt");
        if(!fichero.exists()){
            System.out.println("No existe");
        }else{
            System.out.println("Existe");
            FileReader lectura=new FileReader(fichero);
            BufferedReader buffer=new BufferedReader(lectura);
            Scanner teclado=new Scanner(System.in);
            System.out.println("Que palabra quiere que tengaa");
            String linea=teclado.nextLine();
            while((linea=buffer.readLine())!=null){
                
            }        
            
            FileWriter salida=new FileWriter("alverres.txt");
            for(int i=texto.size()-1;i>=0;i--){
                salida.write(texto.get(i));
                salida.write("\n");
                
            }
            salida.close();
        }   
    }
}
