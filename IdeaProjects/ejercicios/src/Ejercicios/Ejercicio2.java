package Ejercicios;

import java.util.Scanner;

public class Ejercicio2 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce la altura");
        int altura = teclado.nextInt();
        System.out.println("Introduce el radio");
        int radio = teclado.nextInt();
        System.out.println("Volumen = "+Math.PI*Math.pow(radio,2)*altura);
        System.out.println("Superficie base = "+Math.PI*Math.pow(radio,2));
        System.out.println("Superficie lado = "+2*(Math.PI*radio*altura));

    }
}
