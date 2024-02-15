package ejer006;

import java.io.*;

public class Principal {
    public static void main(String[] args) throws IOException {
        File archivo = new File("C:\\Users\\FP\\Desktop\\Cristian\\Programación\\listaNombres.txt");
        FileWriter copiaNombres = new FileWriter("copiaNombres.txt");
        if (!archivo.exists()){
            System.out.println("El archivo no existe");
        }else {
            FileReader leer = new FileReader(archivo);
            BufferedReader buffer = new BufferedReader(leer);
            String linea;
            while ((linea = buffer.readLine())!=null){
                copiaNombres.write(linea+"\n");
            }
        }
        copiaNombres.close();
    }
}
