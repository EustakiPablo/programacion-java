package ejercicio8;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        //(-b+Math.sqrt(Math.pow(b,2)-4*a*c))/2*a
        System.out.println("Introduce a: ");
        double a = teclado.nextDouble();
        System.out.println("Introduce b: ");
        double b = teclado.nextDouble();
        System.out.println("Introduce c: ");
        double c = teclado.nextDouble();
        double resultA = (-b - Math.sqrt(Math.pow(b, 2) - 4 * a * c)) / 2 * a;
        double resultB = (-b + Math.sqrt(Math.pow(b, 2) - 4 * a * c)) / 2 * a;
        System.out.println(resultA);
        System.out.println(resultB);
    }
}
