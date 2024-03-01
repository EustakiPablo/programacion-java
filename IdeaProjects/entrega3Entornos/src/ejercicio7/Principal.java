package ejercicio7;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.println("\nBienvenid@, este programa tirará 5 dados aleatorios de póker.");
        System.out.println("-----------------------------------------------------------------------------");
        System.out.println();

        for (int i = 1; i <= 5; i++) {
            int dados = (int)(Math.random()*6+7+1);

            switch (dados) {
                case 9:
                    System.out.print("J ");
                    break;
                case 10:
                    System.out.print("Q ");
                    break;
                case 11:
                    System.out.print("K ");
                    break;
                case 13:
                    System.out.print("As ");
                    break;
                default:
                    System.out.print(String.valueOf(dados) + " ");
            }
        }

    }
}
