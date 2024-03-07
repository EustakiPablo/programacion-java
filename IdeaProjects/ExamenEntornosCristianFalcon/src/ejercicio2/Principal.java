package ejercicio2;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {

        Scanner teclado = new Scanner(System.in);
        System.out.println("Selecciona la estación del año\n1-Primavera\n2-Verano\n3-Otoño\n4-invierno");
        int[][] prevision = {

                {15,30,60,40},//Primavera
                {25,45,80,20},//Verano
                {20,30,40,60},//Otoño
                {0,25,20,80}//Invierno
        };
        int temperatura1 = 0;
        int temperatura2 = 0;
        int[] probab = {1,2,3,4,5,6,7,8,9,10};
        int seleccion = teclado.nextInt();
        int solNub = 0;
        switch (seleccion){
            case 1:
                temperatura1 = (int) (Math.random()*30+1);
                while(temperatura1<=15||temperatura1>=30){
                    temperatura1 = (int) (Math.random()*30+1);
                }
                temperatura2 = (int) (Math.random()*30+1);
                while(temperatura2<=15||temperatura2>=30){
                    temperatura2 = (int) (Math.random()*30+1);
                }
                if (temperatura1>temperatura2){
                    System.out.println("Temperatura máxima: "+temperatura1);
                    System.out.println("Temperatura mínima: "+temperatura2);
                }else{
                    System.out.println("Temperatura máxima: "+temperatura2);
                    System.out.println("Temperatura mínima: "+temperatura1);
                }
                //mayor o igual que un numero del 1 al 10
                solNub = (int)(Math.random()*10+1);
                if (solNub<=4){
                    System.out.println("Nublado");
                }else{
                    System.out.println("Soleado");
                }
                break;
            case 2:
                temperatura1 = (int) (Math.random()*45+1);
                while(temperatura1<=25||temperatura1>=45){
                    temperatura1 = (int) (Math.random()*30+1);
                }
                temperatura2 = (int) (Math.random()*45+1);
                while(temperatura2<=25||temperatura2>=45){
                    temperatura2 = (int) (Math.random()*45+1);
                }
                if (temperatura1>temperatura2){
                    System.out.println("Temperatura máxima: "+temperatura1);
                    System.out.println("Temperatura mínima: "+temperatura2);
                }else{
                    System.out.println("Temperatura máxima: "+temperatura2);
                    System.out.println("Temperatura mínima: "+temperatura1);
                }
                //mayor o igual que un numero del 1 al 10
                solNub = (int)(Math.random()*10+1);
                if (solNub<=2){
                    System.out.println("Nublado");
                }else{
                    System.out.println("Soleado");
                }
                break;
            case 3:
                temperatura1 = (int) (Math.random()*30+1);
                while(temperatura1<=20||temperatura1>=30){
                    temperatura1 = (int) (Math.random()*30+1);
                }
                temperatura2 = (int) (Math.random()*30+1);
                while(temperatura2<=20||temperatura2>=30){
                    temperatura2 = (int) (Math.random()*30+1);
                }
                if (temperatura1>temperatura2){
                    System.out.println("Temperatura máxima: "+temperatura1);
                    System.out.println("Temperatura mínima: "+temperatura2);
                }else{
                    System.out.println("Temperatura máxima: "+temperatura2);
                    System.out.println("Temperatura mínima: "+temperatura1);
                }
                //mayor o igual que un numero del 1 al 10
                solNub = (int)(Math.random()*10+1);
                if (solNub<=6){
                    System.out.println("Nublado");
                }else{
                    System.out.println("Soleado");
                }
                break;
            case 4:
                temperatura1 = (int) (Math.random()*25+1);
                while(temperatura1<=0||temperatura1>=25){
                    temperatura1 = (int) (Math.random()*25+1);
                }
                temperatura2 = (int) (Math.random()*25+1);
                while(temperatura2<=0||temperatura2>=25){
                    temperatura2 = (int) (Math.random()*25+1);
                }
                if (temperatura1>temperatura2){
                    System.out.println("Temperatura máxima: "+temperatura1);
                    System.out.println("Temperatura mínima: "+temperatura2);
                }else{
                    System.out.println("Temperatura máxima: "+temperatura2);
                    System.out.println("Temperatura mínima: "+temperatura1);
                }
                //mayor o igual que un numero del 1 al 10
                solNub = (int)(Math.random()*10+1);
                if (solNub<=8){
                    System.out.println("Nublado");
                }else{
                    System.out.println("Soleado");
                }
                break;
            default:
                System.out.println("No es un parámetro válido");
        }
    }
}
