package ejercicio1;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.println("\nBienvenid@, este programa mostrará la tirada de 3 dados y realizará la suma total.");
        System.out.println("-----------------------------------------------------------------------------");
        System.out.println();
        int contador = 1;
        int suma = 0;

        for (int i = 1; i < 4; i++) {
            int dado = (int)(Math.random()*6+1);
            System.out.println("El dado " + contador + " ha sacado: " + dado);
            suma = suma + dado;
            contador++;
            System.out.println();
        }
        System.out.println("\nLa suma total de los 3 dados es " + suma);

    }
}
