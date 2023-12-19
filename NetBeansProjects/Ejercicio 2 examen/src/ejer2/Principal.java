/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer2;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        int[][] num = {
            {89, 20, 45, 9},
            {20, 1, 25, 78},
            {7, 25, 78, 12},
            {78, 96, 25, 1}
        };
        int suma1 = 0;
        int suma2 = 0;
        int suma3 = 0;
        int suma4 = 0;
        //suma
        for (int i = 0; i < num.length; i++) {
            for (int j = 0; j < num[i].length; j++) {
                switch(i){
                    case 0:
                        suma1+=num[i][j];
                        break;
                    case 1:
                        suma2+=num[i][j];
                        break;
                    case 2:
                        suma3+=num[i][j];
                        break;
                    case 3:
                        suma4+=num[i][j];
                        break;
                }
            }
        }
        
        //multiplicación
        
        int mult1 = 1;
        int mult2 = 1;
        int mult3 = 1;
        int mult4 = 1;
        for (int i = 0; i < num.length; i++) {
            for (int j = 0; j < num[i].length; j++) {
                switch(j){
                    case 0:
                        mult1*=num[i][j];
                        break;
                    case 1:
                        mult2*=num[i][j];
                        break;
                    case 2:
                        mult3*=num[i][j];
                        break;
                    case 3:
                        mult4*=num[i][j];
                        break;
                }
            }
        }
        int total = 0;
        int cont = 0;
        //media todos
        for (int i = 0; i < num.length; i++) {
            for (int j = 0; j < num[i].length; j++) {
                total+=num[i][j];
                cont++;
            }
        }
        
        
        
        System.out.println("Suma fila 1:"+suma1);
        System.out.println("Suma fila 2:"+suma2);
        System.out.println("Suma fila 3:"+suma3);
        System.out.println("Suma fila 4:"+suma4);
        System.out.println("Multiplicación fila 1: "+mult1);
        System.out.println("Multiplicación fila 2: "+mult2);
        System.out.println("Multiplicación fila 3: "+mult3);
        System.out.println("Multiplicación fila 4: "+mult4);
        System.out.println("La media de todos los números es: "+(total/cont));
    }
}
