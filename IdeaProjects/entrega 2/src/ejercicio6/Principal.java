package ejercicio6;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        double iva = 0;
        double precioFinal;
        double ivaGeneral = 0.21;
        double ivaReducido = 0.1;
        double ivaSupReducido = 0.04;
        double mitad = 0.5;
        double meno5 = -5;
        double porc5 = 0.05;
        System.out.println("Introduce el precio");
        double precio = teclado.nextDouble();
        System.out.println("Introduce la cantidad");
        double cantidad = teclado.nextDouble();
        System.out.println("Introduce el iva aplicable: ");
        System.out.println("1- 21%, 2- 10%, 3- 5%");
        int selecIva = teclado.nextInt();
        switch (selecIva){
            case 1:
                iva = precio*ivaGeneral;
                break;
            case 2:
                iva = precio*ivaReducido;
                break;
            case 3:
                iva = precio*ivaSupReducido;
                break;
        }
        precioFinal = (precio+iva)*cantidad;
        System.out.println("¿Tienes algún cupón de descuento?");
        System.out.println("1- Si, 2- no");
        int descuento = teclado.nextInt();
        if (descuento==1){
            System.out.println("Introduce el cupón: ");
            String cupon = teclado.next();
            switch (cupon){
                case "mitad":
                    System.out.println("Se aplica un 50% de descuento");
                    precioFinal = precioFinal*mitad;
                    break;
                case "meno5":
                    System.out.println("Se descuentan 5€ del total");
                    precioFinal = precioFinal+meno5;
                    break;
                case "5porc":
                    System.out.println("Se aplica un 5% de descuento");
                    precioFinal = precioFinal-(precioFinal*porc5);
                    break;
                default:
                    System.out.println("El cupón introducido no es correcto.");
            }
            System.out.println("El precio total es: "+precioFinal);
        }
    }
}