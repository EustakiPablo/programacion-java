package ejercicio4;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("Serie Fibonacci");
        System.out.println("················");
        System.out.print("¿Cuantos numeros quiere que muestre? ");
        int valorIntroducido = Integer.parseInt(s.nextLine());

        int valorA = 0;
        int valorB = 1;
        int suma = 0;

        if (valorIntroducido == 1) {
            System.out.print("0");
            System.out.print(valorA + " ");
        }else
            System.out.print("0 ");
            for (int i = 1; i < valorIntroducido; i++) {
                System.out.print(valorB + " ");
                suma = valorA + valorB;
                valorA = valorB;
                valorB = suma;
            }
        }
    }

