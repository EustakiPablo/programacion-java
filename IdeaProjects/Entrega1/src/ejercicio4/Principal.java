package ejercicio4;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        //A
        System.out.println("Introduce los chelines austriacos");
        double chelin = teclado.nextInt();
        System.out.println("En pesetas son: "+chelin*9568.71);
        //B
        System.out.println("Introduce las darcmas griegas");
        double grie = teclado.nextInt();
        System.out.println("En Francos es: "+ (grie*886.07/20110));
        //C
        System.out.println("introduce las pesetas");
        double pes = teclado.nextInt();
        System.out.println("En dolares es: "+pes/122499);
        System.out.println("En liras italianas es: "+ pes/9289/100);
    }
}
