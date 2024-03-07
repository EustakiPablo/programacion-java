package ejercicio1;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        boolean salir = true;
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce tantos números como quieras.");
        System.out.println("Introduce un número negativo para salir.");
        int contador = 0;
        int contadorN = 0;
        int mayorP = 0;
        int finN = 0;
        while(salir){
            int num = teclado.nextInt();
            if (num <0){
                salir = false;
            }else {
                contador++;
                if (num%2==0){
                    if (mayorP<num){
                        mayorP = num;
                    }
                } else {
                    contadorN++;
                    finN+=num;
                }
            }
        }
        System.out.println("Has introducido: "+contador);
        System.out.println("La media de los impares es:"+(finN/contadorN));
        System.out.println("El mayor número par introducido es: "+mayorP);

    }
}
