package ejercicio7;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce el mes: ");
        int mes = teclado.nextInt();
        System.out.println("Introduce el día");
        int dia = teclado.nextInt();
        switch (mes){
            case 1:
                if (dia>=1 && dia <=20){
                    System.out.println("Capricornio");
                }else if (dia<=31){
                    System.out.println("Acuario");
                }else {
                    System.out.println("No es un día válido");
                }
                break;
            case 2:
                if (dia>=1 && dia<18){
                    System.out.println("Acuario");
                } else if (dia<=28) {
                    System.out.println("Piscis");
                }else {
                    System.out.println("No es un día válido");
                }
                break;
            case 3:
                if (dia>=1&&dia<=21){
                    System.out.println("Piscis");
                } else if (dia<=31) {
                    System.out.println("A");
                }
                break;
            case 4:

                break;
            case 5:

                break;
            case 6:

                break;
            case 7:

                break;
            case 8:

                break;
            case 9:

                break;
            case 10:

                break;
            case 11:

                break;
            case 12:

                break;
            default:
                System.out.println("No es un mes válido");
        }

    }
}
