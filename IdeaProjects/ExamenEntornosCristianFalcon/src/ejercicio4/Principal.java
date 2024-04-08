package ejercicio4;

import java.util.ArrayList;

public class Principal {
    public static void main(String[] args) {
        String planta = "*";
        String piedra = "O";
        ArrayList<String> sendero = new ArrayList<>();
        sendero.add("|    |");
        sendero.add("/    /");
        sendero.add("\\    \\");
        //System.out.println("    "+sendero.get(1));
        int anterior = 0;
        int aleatorio = 0;
        int espacios = 2;
        for (int i = 0; i < 10; i++) {
            String camino = "";
            for (int j = 0; j < espacios; j++) {
                camino += " ";
            }
            aleatorio = (int) (Math.random()*3+1);
            if (anterior == 2 || anterior == 3){
                aleatorio = 1;
            }
            /*while (anterior == 2){
                aleatorio = (int) (Math.random()*3+1);
            }*/
            anterior = aleatorio;
            switch (aleatorio){
                case 1:
                    camino += "|";
                    aleatorio = (int) (Math.random()*3+1);
                    switch (aleatorio){
                        case 1:
                            //planta
                            aleatorio = (int) (Math.random()*4+1);
                            if (aleatorio == 1){
                                camino += "*   ";
                            } else if (aleatorio == 2) {
                                camino+= " *  ";
                            } else if (aleatorio == 3) {
                                camino += "  * ";
                            } else if (aleatorio == 4) {
                                camino += "   *";
                            }
                            break;
                        case 2:
                            //piedra
                            aleatorio = (int) (Math.random()*4+1);
                            if (aleatorio == 1){
                                camino += "O   ";
                            } else if (aleatorio == 2) {
                                camino+= " O  ";
                            } else if (aleatorio == 3) {
                                camino += "  O ";
                            } else if (aleatorio == 4) {
                                camino += "   O";
                            }
                            break;
                        case 3:
                            //espacio
                            camino+="    ";
                            break;
                    }
                    camino+= "|";
                    break;
                case 2:
                    camino += "/";
                    aleatorio = (int) (Math.random()*3+1);
                    switch (aleatorio){
                        case 1:
                            //planta
                            aleatorio = (int) (Math.random()*4+1);
                            if (aleatorio == 1){
                                camino += "*   ";
                            } else if (aleatorio == 2) {
                                camino+= " *  ";
                            } else if (aleatorio == 3) {
                                camino += "  * ";
                            } else if (aleatorio == 4) {
                                camino += "   *";
                            }
                            break;
                        case 2:
                            //piedra
                            aleatorio = (int) (Math.random()*4+1);
                            if (aleatorio == 1){
                                camino += "O   ";
                            } else if (aleatorio == 2) {
                                camino+= " O  ";
                            } else if (aleatorio == 3) {
                                camino += "  O ";
                            } else if (aleatorio == 4) {
                                camino += "   O";
                            }
                            break;
                        case 3:
                            //espacio
                            camino+="    ";
                            break;
                    }
                    espacios--;
                    camino+= "/";
                    break;
                case 3:
                    camino += "\\";
                    aleatorio = (int) (Math.random()*3+1);
                    switch (aleatorio){
                        case 1:
                            //planta
                            aleatorio = (int) (Math.random()*4+1);
                            if (aleatorio == 1){
                                camino += "*   ";
                            } else if (aleatorio == 2) {
                                camino+= " *  ";
                            } else if (aleatorio == 3) {
                                camino += "  * ";
                            } else if (aleatorio == 4) {
                                camino += "   *";
                            }
                            break;
                        case 2:
                            //piedra
                            aleatorio = (int) (Math.random()*4+1);
                            if (aleatorio == 1){
                                camino += "O   ";
                            } else if (aleatorio == 2) {
                                camino+= " O  ";
                            } else if (aleatorio == 3) {
                                camino += "  O ";
                            } else if (aleatorio == 4) {
                                camino += "   O";
                            }
                            break;
                        case 3:
                            //espacio
                            camino+="    ";
                            break;
                    }
                    espacios++;
                    camino+= "\\";
                    break;
            }
            System.out.println(camino);
            }
        }
    }

