package ejer008;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Principal {
    public static void main(String[] args) throws IOException {
        FileInputStream foto = new FileInputStream("cielo.jpg");
        FileOutputStream copia = new FileOutputStream("copia.jpg");
        while(foto.available()!=0){
            copia.write(foto.read());
        }
        foto.close();
        copia.close();
    }
}
