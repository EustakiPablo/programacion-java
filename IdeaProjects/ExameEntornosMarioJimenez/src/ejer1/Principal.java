package ejer1;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Dime numeros");
        int numeros = teclado.nextInt();
        int contador = 0;
        while(numeros>=0) {

                for (int i = 0; i<numeros; i++){
                    numeros++;
                }

            }if(numeros<0){
        if (numeros % 2 == 1) {
                double media = numeros/ 2;
                System.out.println("La media de los impares es " + media);
        }
        contador++;
        System.out.println("Se han introducido " +contador+ " numeros");
        }
        numeros++;
    }
}
