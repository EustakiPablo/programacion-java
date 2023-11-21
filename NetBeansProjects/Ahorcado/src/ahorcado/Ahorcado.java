/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ahorcado;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author crist
 */
public class Ahorcado {

    public static void main(String[] args) {

        String[] diccionario = {"pajaro", "casa", "cuchillo", "lapiz", "manzana", "perro", "guitarra", "libro", "taza", "zapato"};
        String usdMostrar = "";
        String palabra = diccionario[(int) (Math.random() * 10)];
        System.out.println(palabra);
        //String palabra = "hola";
        Scanner teclado = new Scanner(System.in);

        String[] juego = new String[palabra.length()];
        String[] usadas = new String[99];
        //System.out.println(Arrays.toString(juego));
        int intentos = 3;
        //int conLetra = 0;
        for (int i = 0; i < juego.length; i++) {
            juego[i] = "_";
        }
        int j = 0;
        System.out.println("Juguemos al ahorcado");
        boolean ganas = false;
        //System.out.println("Introduce una letra: ");
        
        //boolean esta = palabra.contains(letra);
        while (intentos > 0 && ganas == false) {
            System.out.println("Introduce una letra:");
            String letra = teclado.next();
            while (Arrays.asList(usadas).contains(letra) && ganas == false || letra.length() > 1) {
                System.out.println("Ya has usado esa letra.");
                if (letra.length() > 1) {
                    System.out.println("Has introducido más de una letra");
                }
                System.out.println("Introduce una letra: ");
                letra = teclado.next();
            }
            boolean esta = palabra.contains(letra);

            //System.out.println("La letra esta?" + esta);
            if (esta) {
                for (int i = 0; i < palabra.length(); i++) {
                    if (palabra.charAt(i) == letra.charAt(0)) {
                        juego[i] = letra;
                    }
                }
            } else {
                intentos--;

                switch (intentos) {
                    case 2:
                        System.out.println(" ___________.._______\n"
                                + "| .__________))______|\n"
                                + "| | / /\n"
                                + "| |/ /\n"
                                + "| | /\n"
                                + "| |/\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "\"\"\"\"\"\"\"\"\"\"|_`-' `-' |\"\"\"|\n"
                                + "|\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|\n"
                                + "| |        \\ \\        | |\n"
                                + ": :         \\ \\       : :  \n"
                                + ". .          `'       . .");
                        break;
                    case 1:
                        System.out.println(" ___________.._______\n"
                                + "| .__________))______|\n"
                                + "| | / /      ||\n"
                                + "| |/ /       ||\n"
                                + "| | /        ||.-''.\n"
                                + "| |/         |/  _  \\\n"
                                + "| |          ||  `/,|\n"
                                + "| |          (\\\\`_.'\n"
                                + "| |         .-`--'.\n"
                                + "| |        /Y . . Y\\\n"
                                + "| |       // |   | \\\\\n"
                                + "| |      //  | . |  \\\\\n"
                                + "| |     ')   |   |   (`\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "| |\n"
                                + "\"\"\"\"\"\"\"\"\"\"|_`-' `-' |\"\"\"|\n"
                                + "|\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|\n"
                                + "| |        \\ \\        | |\n"
                                + ": :         \\ \\       : :  \n"
                                + ". .          `'       . .");
                        break;
                }
                System.out.println("Te quedan " + (intentos) + " Intentos");

            }
            usadas[j] = letra;
            j++;

            usdMostrar += letra + ", ";
            //System.out.println("Has usado: " + Arrays.toString(usadas) + " letras, no las puedes volver a usar.");
            System.out.println("Has usado: " + usdMostrar + " no las puedes volver a usar.");
            System.out.println(Arrays.toString(juego));

            if (!Arrays.asList(juego).contains("_")) {
                ganas = true;
                System.out.println("Has ganado");
            }

            
        }

        if (ganas == false) {
            System.out.println(" ___________.._______\n"
                    + "| .__________))______|\n"
                    + "| | / /      ||\n"
                    + "| |/ /       ||\n"
                    + "| | /        ||.-''.\n"
                    + "| |/         |/  _  \\\n"
                    + "| |          ||  `/,|\n"
                    + "| |          (\\\\`_.'\n"
                    + "| |         .-`--'.\n"
                    + "| |        /Y . . Y\\\n"
                    + "| |       // |   | \\\\\n"
                    + "| |      //  | . |  \\\\\n"
                    + "| |     ')   |   |   (`\n"
                    + "| |          ||'||\n"
                    + "| |          || ||\n"
                    + "| |          || ||\n"
                    + "| |          || ||\n"
                    + "| |         / | | \\\n"
                    + "\"\"\"\"\"\"\"\"\"\"|_`-' `-' |\"\"\"|\n"
                    + "|\"|\"\"\"\"\"\"\"\\ \\       '\"|\"|\n"
                    + "| |        \\ \\        | |\n"
                    + ": :         \\ \\       : :  \n"
                    + ". .          `'       . .");
            System.out.println("Has perdido, intentalo de nuevo");
        }

        //System.out.println(Arrays.toString(juego));
    }
}
