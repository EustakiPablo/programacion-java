package Tema5;

import java.util.Arrays;

public class SegundoEjercicioDam {
    public static void main(String[] args) {
        String[] oca = {"Salida", "2","3","4","Oca","Puente","7","8","Oca","10","11","Puente","13","Oca","16","17","Oca","Posada","20","21","22","Oca","24","25","26","Oca","28","29","30","Pozo","Oca","33","34","35","Oca","37","38","39","40","Oca","Laberinto","43","44","Oca","46","47","48","49","Oca","51","52","53","Oca","55","56","57","Muerte","Oca","60","61","62","Has ganado"};
        int[] ocas = {5, 9, 14, 18, 23, 27, 32, 36, 41, 45, 50, 54,59};
        //System.out.println(Arrays.toString(oca));
        //int dado = (int) (Math.random()*7);
        //System.out.println(dado);
        int contadorTiradas = 0;
        int casilla = 0;
        boolean ganas = false;
        while(!ganas){
            int dado = (int) (Math.random()*7);
            //System.out.println("Tira un dado escribiendo 1");
            //63 casillas
            casilla+=dado;
            System.out.println("Estas en la casilla: ");
            
        }
    }
}
