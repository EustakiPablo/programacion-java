package EjerciciosEntornos;

import java.util.Scanner;

public class deCentimetrosPulgadas {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce las pulgadas");
        double pul = teclado.nextDouble();
        System.out.println("Son: "+(pul*2.54)+" centímetros");
    }
}
