package ejer002;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) throws IOException {
        FileWriter archivo = new FileWriter("archivo1.txt",true);
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce el texto que quieras, para salir del programa escribe *");
        String linea = "";
        while (!linea.contains("*")){
            linea = teclado.nextLine();
            archivo.write(linea.replace("*","")+"\n");
        }
        archivo.close();
    }
}
