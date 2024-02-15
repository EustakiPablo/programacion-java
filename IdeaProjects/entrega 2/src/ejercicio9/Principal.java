package ejercicio9;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce la altura");
        Double altura = teclado.nextDouble();
        System.out.println("Tarda en caer: "+(Math.sqrt(2*altura/9.8)));
    }
}
