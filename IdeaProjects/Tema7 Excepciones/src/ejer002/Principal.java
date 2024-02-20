package ejer002;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        System.out.println("Introduce un número");
        int num = teclado.nextInt();

        if (num%2 == 1){
            try {
                throw new MiExcepcion();
            } catch (MiExcepcion e) {
                System.out.println("Error en la entrada de datos es un número impar");
                System.out.println(e.getMessage());
            }
        }
    }
}
