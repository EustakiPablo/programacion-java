package ejercicio6;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.print("\nBienvenid@, este programa pintará una serpiente, para su serpenteo aleatorio");
        System.out.println(" . Usted introducirá la longitud de la serpiente contando la cabeza.");
        System.out.println("-----------------------------------------------------------------------------");
        System.out.println();

        System.out.print("\nPor favor, introduzca la longitud de la serpiente contando la cabeza: ");
        int longitud = Integer.parseInt(s.nextLine());

        int espacios = 13;
        System.out.printf("\n%13s\n", '@');

        for (int i = 1; i < longitud; i++) {
            int serpenteo = (int)(Math.random()*3)-1;

            espacios += serpenteo;

            for (int j = 1; j < espacios; j++) {
                System.out.print(" ");
            }
            System.out.print("#");
            System.out.println();
        }

    }
}
