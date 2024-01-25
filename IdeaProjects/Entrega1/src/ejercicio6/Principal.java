package ejercicio6;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce la distancia a recorrer");
        double distancia = teclado.nextDouble();
        System.out.println("Introduce el número de dias de estancia");
        double estancia = teclado.nextDouble();
        if (distancia > 1000 && estancia > 7){
            System.out.println("El precio con descuento es: "+(distancia*8.5-(distancia*8.5*0.3)));
        }else {
            System.out.println("El precio es: "+(distancia*8.5));
        }
    }
}
