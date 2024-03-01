package ejercicio2;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);

        System.out.println("\nBienvenid@, este programa mostrará al azar el nombre de una carta de la baraja francesa.");
        int palo = (int) (Math.random() * 4 + 1);
        int carta = (int) (Math.random() * 13 + 1);
        String tipoCarta = "";
        String tipoPalo = ""; //

        switch (palo) {
            case 1:
                tipoPalo = "picas.";
                break;

            case 2:
                tipoPalo = "corazones.";
                break;

            case 3:
                tipoPalo = "diamantes.";
                break;

            case 4:
                tipoPalo = "tréboles.";
                break;

            default:
                tipoPalo = "nada.";
        }

        if ((carta == 1) || (carta > 10)) {
            switch (carta) {
                case 1:
                    tipoCarta = "As";
                    break;

                case 11:
                    tipoCarta = "J";
                    break;

                case 12:
                    tipoCarta = "Q";
                    break;

                case 13:
                    tipoCarta = "K";
                    break;

                default:
                    tipoCarta = "Nada";
            }
            System.out.print("\nHa sacado el/la " + tipoCarta + " de " + tipoPalo);
        } else {
            System.out.print("\nHa sacado el " + carta + " de " + tipoPalo);

        }
    }
}
