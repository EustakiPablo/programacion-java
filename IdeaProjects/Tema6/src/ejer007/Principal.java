package ejer007;

import java.io.*;

public class Principal {
    public static void main(String[] args) throws IOException {
        //nº lineas, numero palabras y numero de caracteres
        File quijote = new File("C:\\Users\\FP\\Desktop","quijote.txt");
        int contadorPalabras=0;
        int contadorLineas=0;
        int contadorCaracteres=0;
        if (!quijote.exists()){
            System.out.println("No existe el archivo");
        }else{
            FileReader leer = new FileReader(quijote);
            BufferedReader buffer = new BufferedReader(leer);
            String linea;
            while ((linea = buffer.readLine())!=null){
                contadorCaracteres+=linea.length();
                contadorLineas++;
                for (int i = 0; i < linea.length(); i++) {
                    if (linea.charAt(i)==' '||i==linea.length()-1){
                        contadorPalabras++;
                    }
                }
            }
            System.out.println("Número de palabras: "+contadorPalabras);
            System.out.println("Número de caracteres: "+contadorCaracteres);
            System.out.println("Número de líneas: "+(contadorLineas));
        }
    }
}
