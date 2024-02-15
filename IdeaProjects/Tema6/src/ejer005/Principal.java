package ejer005;

import java.io.*;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) throws IOException {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce una palabra: ");
        String palabra = teclado.next();
        File archivo = new File("C:\\Users\\FP\\Desktop\\Cristian\\Programación\\a.txt");
        FileReader leer = new FileReader(archivo);
        BufferedReader buffer = new BufferedReader(leer);
        String linea;
        FileWriter escribir = new FileWriter("copia.txt");
        while ((linea= buffer.readLine())!=null){
            if (linea.contains(palabra)){
                escribir.write(linea+"\n");
            }
        }
        escribir.close();
        leer.close();
    }
}
