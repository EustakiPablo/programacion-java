/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejercicio;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) throws IOException {
        /*No entiendo por qué nunca paso a la contraseña por mucho que cambie la condición del IF, si la lógica no falla,
        solo tiene que comprobar espacios y si el valor booleano es falso. Una vez realiza eso hace la comprobación de
        el largo de la contraseña y escribe. Como uso el try with resources se cierra solo. me ha hecho lo mismo con IF*/
        try (
                FileWriter escribir = new FileWriter("wp-config.php");
                Scanner teclado = new Scanner(System.in);) {
            System.out.println("Introduce el nombre de la base de datos");
            String nombreDB = teclado.nextLine();
            if (nombreDB.contains(" ") || nombreDB.contains("@")) {
                System.out.println("No puede tener espacios ni @");
            } else {
                System.out.println("Introduce el nombre de usuario");
                String userNam = teclado.next();
                boolean correctoNom = true;
                /*switch (userNam.charAt(0)) {
                    case '1':
                        correctoNom = false;
                        break;
                    case '2':
                        correctoNom = false;
                        break;
                    case '3':
                        correctoNom = false;
                        break;
                    case '4':
                        correctoNom = false;
                        break;
                    case '5':
                        correctoNom = false;
                        break;
                    case '6':
                        correctoNom = false;
                        break;
                    case '7':
                        correctoNom = false;
                        break;
                    case '8':
                        correctoNom = false;
                        break;
                    case '9':
                        correctoNom = false;
                        break;
                    case '0':
                        correctoNom = false;
                        break;
                }*/
                if(userNam.charAt(0)=='1'){
                    correctoNom = false;
                }
                if(userNam.charAt(0)=='2'){
                    correctoNom = false;
                }
                if(userNam.charAt(0)=='3'){
                    correctoNom = false;
                }
                if(userNam.charAt(0)=='4'){
                    correctoNom = false;
                }
                if(userNam.charAt(0)=='5'){
                    correctoNom = false;
                }
                if(userNam.charAt(0)=='6'){
                    correctoNom = false;
                }
                if(userNam.charAt(0)=='7'){
                    correctoNom = false;
                }
                if(userNam.charAt(0)=='8'){
                    correctoNom = false;
                }
                if(userNam.charAt(0)=='9'){
                    correctoNom = false;
                }
                if(userNam.charAt(0)=='0'){
                    correctoNom = false;
                }
                if (userNam.contains(" ")||!correctoNom) {
                    System.out.println("No puede contener espacios o empezar por un número.");
                } else {
                    System.out.println("Introduce la contraseña: ");
                    String pass = teclado.nextLine();
                    if (pass.length() < 12) {
                        System.out.println("Necesitas al menos 12 caracteres.");
                    } else {
                        escribir.write("define( 'DB_NAME', '" + nombreDB + "');\n"
                                + "define( 'DB_USER', '" + userNam + "' );\n"
                                + "define( 'DB_PASSWORD', '" + pass + "' );\n"
                                + "define( 'DB_HOST', 'localhost' );\n"
                                + "define( 'DB_CHARSET', 'utf8' );\n");
                        System.out.println("Escrito con éxito");
                    }
                }
            }
        }
    }
}
