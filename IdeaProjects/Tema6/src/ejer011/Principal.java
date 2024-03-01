package ejer011;

import java.io.*;

public class Principal {
    public static void main(String[] args) throws IOException {

        try(FileReader archivo = new FileReader("C:\\Users\\FP\\Desktop\\quijote.txt");
            BufferedReader lectura = new BufferedReader(archivo);
            FileWriter escribir = new FileWriter("copiaQuijote.txt");){
            String linea;
            int contador = 0;
            while ((linea = lectura.readLine())!=null){
                for (int i = 0; i < linea.length(); i++) {
                    if (contador ==15){
                        escribir.write("\n");
                    }
                    escribir.write(linea.charAt(i));
                    if (contador>= 15){
                        contador = 0;
                    }
                    contador++;
                }
            }
        }
    }
}
