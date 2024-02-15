package ejer009;

import java.io.*;

public class Recupera {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        FileInputStream leer = new FileInputStream("objetoP.dat");
        ObjectInputStream objeto = new ObjectInputStream(leer);
        /*Persona recogida = (Persona) objeto.readObject();
        System.out.println(recogida.toString());
        recogida = (Persona) objeto.readObject();
        System.out.println(recogida.toString());*/
        try{
            Persona recogida;
            while ((recogida = (Persona) objeto.readObject()) != null){
                System.out.println(recogida.toString());
            }
        }catch (EOFException e){
            System.out.println("Se termina el archivo");
        }
    }
}
