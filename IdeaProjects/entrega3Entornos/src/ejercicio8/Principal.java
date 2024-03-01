package ejercicio8;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.print("\nBienvenid@, este programa mostrará 10 números introducidos por usted con su");
        System.out.println(" máximo y su mínimo.");
        System.out.println("-----------------------------------------------------------------------------");
        System.out.println();

        int numero[] = new int[10];
        int maximo = Integer.MIN_VALUE;
        int minimo = Integer.MAX_VALUE;

        for (int i = 0; i < 10; i++) {
            System.out.print("\nPor favor, introduzca 10 números por teclado, vaya pulsando [Intro]: ");
            numero[i] = Integer.parseInt(s.nextLine());

            if (numero[i] > maximo) {
                maximo = numero[i];
            }
            if (numero[i] < minimo) {
                minimo = numero[i];
            }
        }

        System.out.println("------------------------------------------------------------------------------\n");

        for (int n : numero) {
            System.out.print(" " + n);

            if (n == minimo) {
                System.out.print("[Mínimo]");
            } else if (n == maximo) {
                System.out.print("[Máximo]");
            }

        }
    }
}