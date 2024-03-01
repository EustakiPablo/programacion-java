package ejercicio3;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.print("\nBienvenid@, este programa mostrará 50 números aleatorios entre 100 y 199, ");
        System.out.println(" el máximo, el mínimo y la media de esos números.");
        System.out.println("-----------------------------------------------------------------------------");
        int minimo = Integer.MAX_VALUE;
        int maximo = Integer.MIN_VALUE;
        int suma = 0;
        System.out.println();

        for (int i = 0; i < 50; i++) {
            int numeros = (int)(Math.random()*100+100);
            System.out.print(numeros + " ");
            suma = suma + numeros;
            if (numeros>maximo){
                maximo = numeros;
            } else if (numeros<minimo) {
                minimo = numeros;
            }
        }
        System.out.println("\n-----------------------------------------------------------------------------");
        System.out.println("\nEl número más pequeño de esos 50 es el " + minimo);
        System.out.println("\nEl número más grande de esos 50 es el " + maximo);
        System.out.println("\nLa media de esos números es de " + suma/50);

    }
}
