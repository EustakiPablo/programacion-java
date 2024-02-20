package ejer004;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        String letras = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ";
        //char[] letrasMayus = letras.toCharArray();
        String letrasMinus = letras.toLowerCase();
        String charactS = ".,;:*!¿¡_-#@&%+-";
        //char[] especialChar = charactS.toCharArray();
        String numeros = "0123456789";
        //char[] numerosArray = numeros.toCharArray();
        boolean finProg = false;

        try (Scanner teclado = new Scanner(System.in);) {
            while (!finProg) {
                System.out.println("Introduce que operación quieres realizar:\n1- Crear contraseña\n2- Asegurar seguridad de contraseña\n3- Salir del programa");
                int select1 = teclado.nextInt();
                if (select1 == 3) {
                    throw new EndOfProgram();
                } else if (select1 != 1 && select1 != 2) {
                    throw new OptionError();
                }
                if (select1 == 1) {
//terminar
                } else {
                    boolean tieneMayu = false;
                    boolean tieneMinu = false;
                    boolean tieneEspe = false;
                    boolean tieneNum = false;
                    boolean salirInstancia = false;
                    while (!salirInstancia) {
                        try {
                            System.out.println("Introduce tu clave para asegurarla");
                            String clave = teclado.next();
                            if (clave.length() < 14 || clave.length() > 16) {
                                throw new InsuficientesCaracteres(clave.length());
                            }
                            for (int i = 0; i < clave.length(); i++) {
                                String letra = String.valueOf(clave.charAt(i));
                                if (letras.contains(letra)) {
                                    tieneMayu = true;
                                }
                                if (letrasMinus.contains(letra)) {
                                    tieneMinu = true;
                                }
                                if (charactS.contains(letra)) {
                                    tieneEspe = true;
                                }
                                if (numeros.contains(letra)) {
                                    tieneNum = true;
                                }
                            }
                            if (tieneMayu && tieneMinu && tieneEspe && tieneNum) {
                                System.out.println("Tu contraseña es segura");
                                salirInstancia = true;
                                select1 = 0;
                            } else {
                                System.out.println("Clave insegura.");
                            }
                        } catch (InsuficientesCaracteres e) {
                            System.out.println(e.getMessage());
                        }
                    }
                }
            }
        } catch (OptionError e) {
            System.out.println(e.getMessage());
        } catch (EndOfProgram e) {
            System.out.println(e.getMessage());
            finProg = true;
        }
    }
}

