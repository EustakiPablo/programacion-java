package ejer004;

import java.io.*;

public class Principal {
    public static void main(String[] args) throws IOException {
        File quijote = new File("C:\\Users\\FP\\Desktop","quijote.txt");
        FileWriter quijote2 = new FileWriter("quijoteCopia.txt");
        if (!quijote.exists()){
            System.out.println("No existe el archivo");
        }else {
            FileReader leer = new FileReader(quijote);
            BufferedReader buffer = new BufferedReader(leer);
            String linea;
            while ((linea= buffer.readLine())!=null){
                quijote2.write(linea.replace("o","0")+"\n");
            }
            leer.close();
            quijote2.close();
        }
    }
}
