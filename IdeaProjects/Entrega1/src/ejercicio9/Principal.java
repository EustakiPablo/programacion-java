package ejercicio9;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Introduce el precio del producto");
        double precio = teclado.nextDouble();
        System.out.println("Introduce las unidades");
        int unidades = teclado.nextInt();
        double precioIva = precio + precio*0.12;
        if (precioIva*unidades >= 50000){
            System.out.println(precioIva*unidades-precio*0.05);
        }else{
            System.out.println(precioIva*unidades);
        }
    }
}
