package ejer001;

import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        ArrayList<String> nombres = new ArrayList<>();
        nombres.add("Campazzo");
        nombres.add("Chacho");
        Scanner teclado = new Scanner(System.in);
        boolean acierto = false;
        int posicion;
        while (!acierto){
            System.out.println("Introduce una posición");
            try{
                posicion = teclado.nextInt();
                System.out.println(nombres.get(posicion));
                acierto= true;
            }catch (IndexOutOfBoundsException e){
                System.out.println("Error");
                System.out.println(e.getMessage());
            }catch (InputMismatchException e){
                System.out.println("Has puesto mal el tipo de dato");
                System.out.println(e.getMessage());
                /*Importante, no funciona porque el escaner es una mierda*/
                teclado.next();
            }finally {
                System.out.println("Fin de programa");
            }
        }
    }
}
