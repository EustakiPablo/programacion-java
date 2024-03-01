package examenOtraClase2;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        try(Scanner teclado = new Scanner(System.in);){
            System.out.println("Introduce la ruta del archivo que deseas copiar con su nombre");
            String ruta = teclado.next();
            try(FileInputStream leer = new FileInputStream(ruta)){
                System.out.println("Leyendo el archivo...");
                System.out.println("Introduce la ruta con el nuevo nombre donde desea la copia");
                String copia = teclado.next();
                try(FileOutputStream salida = new FileOutputStream(copia)){
                    System.out.println("Creando copia...");
                    while (leer.available()!=0){
                        salida.write(leer.read());
                    }
                }
            } catch (FileNotFoundException e) {
                System.out.println("No se encuentra el archivo indicado");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
