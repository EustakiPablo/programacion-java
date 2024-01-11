package EjerciciosEntornos;

import java.util.Scanner;

public class areatriangulo {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce la base:");
        int base = teclado.nextInt();
        System.out.println("Introduce la altura:");
        int altura = teclado.nextInt();
        System.out.println("El área es: "+(base*altura/2));
    }
}
