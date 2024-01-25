package ejercicio8;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce los minutos.");
        int minutos = teclado.nextInt();
        int total = 10;
        if (minutos >= 3){
            total+=(minutos-3)*5;
        }
        System.out.println("El total de la llamada es: "+total);
    }
}
