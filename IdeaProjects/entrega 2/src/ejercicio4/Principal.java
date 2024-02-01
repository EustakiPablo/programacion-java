package ejercicio4;

import java.util.Arrays;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        /*int[][] array = {
                {3,3,4,5},
                {3,3,4,5},
                {3,3,4,5},
                {3,3,4,5},
                {3,3,4,5},
        };*/
        int array[][] = new int[5][4];
        int sumaFinal = 0;
        System.out.println("Introduce valores");
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[i].length; j++) {
                array[i][j] = teclado.nextInt();
            }
        }
        for (int i = 0; i < array.length ; i++) {
            System.out.print(Arrays.toString(array[i])+"=");
            int resultFila = 0;
            for (int j = 0; j < array[i].length ; j++) {
                resultFila+=array[i][j];
                sumaFinal+=array[i][j];
            }
            System.out.println(resultFila);
        }
        for (int i = 0; i < array[i].length; i++) {
            int resultCol = 0;
            for (int j = 0; j < array.length; j++) {
                resultCol+=array[j][i];
            }
            System.out.print(resultCol+" ");
        }
        System.out.println("Total: "+sumaFinal);
    }
}
