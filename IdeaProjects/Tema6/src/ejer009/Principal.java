package ejer009;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) throws IOException {
        Scanner teclado = new Scanner(System.in);
        FileOutputStream escribir = new FileOutputStream("objetoP.dat");
        ObjectOutputStream escritura = new ObjectOutputStream(escribir);
        /*Persona p1 = new Persona("Cristian",22);
        Persona p2 = new Persona("Dandi",71);
        escritura.writeObject(p1);
        escritura.writeObject(p2);*/
        Persona p;
        String salgo = " ";
        String nombre;
        int edad;
        while (salgo.charAt(0)!='*'){
            p = new Persona();
            System.out.println("Nombre");
            p.setNombre(nombre = teclado.next());
            System.out.println("Edad");
            p.setEdad(edad = teclado.nextInt());
            escritura.writeObject(p);
            salgo = teclado.next();
        }
        escritura.close();
        escribir.close();
    }
}
