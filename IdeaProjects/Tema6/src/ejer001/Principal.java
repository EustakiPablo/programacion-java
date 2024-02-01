package ejer001;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;


public class Principal {
    public static void main(String[] args) throws IOException {
        File fichero = new File("cazador.txt");
        Scanner teclado = new Scanner(System.in);
        FileWriter ficheroEscritura = new FileWriter(fichero);
        System.out.println("Escribe algo");
        ficheroEscritura.write(teclado.nextLine());
        System.out.println("Dime otra cosa");
        ficheroEscritura.append("\n"+teclado.nextLine());
        ficheroEscritura.close();
    }
}
