package ejercicio7;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce los kilómetros");
        double kilom = teclado.nextInt();
        System.out.println("En millas marinas es: "+kilom/1852);
        System.out.println("En millas terrestres: "+kilom/1609);
    }
}
