package ejercicio5;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.print("\nBienvenid@, este programa pintará una cuba con cierta cantidad de agua aleatoria");
        System.out.println(" . La capacidad la introducirá usted por teclado.");
        System.out.println("-----------------------------------------------------------------------------");


        System.out.print("\nPor favor, indique la capacidad de la cuba en litros: ");
        int capacidad = Integer.parseInt(s.nextLine());

        int anchura = 4;
        int cantidad = (int)(Math.random()*(capacidad+1));
        int litros = cantidad;
        System.out.println();


        for (int i = 1; i <= capacidad; i++) {
            System.out.print("*");


            if (cantidad < capacidad) {
                for (int j = 1; j <= anchura; j++) {
                    System.out.print(" ");
                }
            } else {
                for (int k = 1; k <= anchura; k++) {
                    System.out.print("=");
                }
            }
            cantidad++;
            System.out.print("*");
            System.out.println();
        }
        System.out.print("******");
        System.out.println("\n---------------------------------------------------------------------------");
        System.out.println("\nLa cuba tiene una capacidad de " + capacidad + " L, y contiene " + litros + " L de agua.");

    }
}
