package ejercicio3;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce el primer cateto");
        int cateto1 = teclado.nextInt();
        System.out.println("Introduce el segundo cateto");
        int cateto2 = teclado.nextInt();
        System.out.println("La hipotenusa es: "+(Math.sqrt((Math.pow(cateto1,2)+Math.pow(cateto2,2)))));
    }
}
