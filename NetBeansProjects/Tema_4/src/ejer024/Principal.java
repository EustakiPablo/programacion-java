/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer024;

import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        //String carac = "*";
        String mes = "Enero";
        ArrayList<Integer> numeros = new ArrayList();
        numeros.add(12);
        numeros.add(16);
        numeros.add(20);
        /*for (int i = 0; i < 12; i++) {
            String entrada = JOptionPane.showInputDialog("Introduce una temperatura");
            
        }*/
        for (int i = 0; i < numeros.size(); i++) {
            System.out.print(mes+": ");
            for (int j = 0; j < numeros.get(i); j++) {
                System.out.print("*");
            }
            switch(i+1){
                case 1:
                    mes = "Febrero";
                    break;
                case 2:
                    mes = "Marzo";
                    break;
                case 3:
                    mes = "Abril";
                    break;
                case 4:
                    mes = "Mayo";
                    break;
                case 5:
                    mes = "Junio";
                    break;
                case 6:
                    mes = "Julio";
                    break;
                case 7:
                    mes = "Agosto";
                    break;
                case 8:
                    mes = "Septiembre";
                    break;
                case 9:
                    mes = "Octubre";
                    break;
                case 10:
                    mes = "Noviembre";
                    break;
                case 11:
                    mes = "Diciembre";
                    break;
                    
            }
            System.out.println("");
        }
        
        
    }
}
