package ejercicio5;


import java.util.Scanner;
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Cuantas hamburguesas se han consumido?");
        int ham = teclado.nextInt()*500;
        System.out.println("Cuantas cervezas?");
        int cer = teclado.nextInt()*150;
        System.out.println("Cuantas Coca-colas?");
        int coca = teclado.nextInt()*175;
        System.out.println("Cuantas ensaladas?");
        int ensa = teclado.nextInt()*200;
        System.out.println("Cuantas salchichas?");
        int salch = teclado.nextInt()*275;
        System.out.println("Cuantos refrescos?");
        int refres = teclado.nextInt()*200;
        System.out.println("Cuantas sopas?");
        int sopa = teclado.nextInt()*260;
        System.out.println("Cuantos pasteles?");
        int pastel = teclado.nextInt()*300;
        System.out.println("El total de ventas es: "+(ham+cer+coca+ensa+salch+refres+sopa+pastel));
        System.out.println("Los impuestos son: "+(ham+cer+coca+ensa+salch+refres+sopa+pastel)*0.12 );
    }
}
