package ejercicio5;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce la nota del primer control");
        double control1 = teclado.nextDouble();
        System.out.println("Introduce la nota del segundo control");
        double control2 = teclado.nextDouble();
        if ((control1+control2)/2<5){
            System.out.println("Ha suspendido, introduce el resultado de la recuperación.");
            System.out.println("1 apto, 2 no apto");
            int resultRecu = teclado.nextInt();
            if (resultRecu==2){
                System.out.println("No ha aprobado");
            }else {
                System.out.println("Su nota es un 5.");
            }
        }else {
            System.out.println("Su nota es: "+(control1+control2)/2);
        }
    }
}
