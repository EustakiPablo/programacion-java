package ejer003;

import java.io.*;

public class Principal {
    public static void main(String[] args) throws IOException {
        File fichero = new File("C:\\Users\\FP\\Desktop","quijote.txt");
        //FileReader leer = new FileReader("");
        if (!fichero.exists()){
            System.out.println("no existe el fichero");
        }else{
            FileReader lectura = new FileReader(fichero);
            //char[] cbuf = new char[100];
            BufferedReader buffer = new BufferedReader(lectura);
            //System.out.println(buffer.readLine());
            //String linea = buffer.readLine();
            /*while (linea!=null){
                System.out.println(linea);
                linea = buffer.readLine();
            }*/
            String linea;
            while ((linea = buffer.readLine())!=null ){
                System.out.println(linea);
            }

        }
    }
}
