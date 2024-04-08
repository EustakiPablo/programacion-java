package ejercicio5;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.print("Por favor, introduzca las horas trabajadas esta semana: ");
        Double horas = Double.parseDouble(s.nextLine());
        double salario;

        if ((horas > 0) && (horas <= 40)) {
            salario =12;
            System.out.println("El sueldo semanal que le corresponde es de " + salario*horas + " €.");
        } else if (horas > 40){
            salario = (horas - 40) * 16;
            double fin = 40*12+salario;
                    System.out.println("El sueldo semanal que le corresponde es de " + fin + " €.");
        } else if (horas == 0) {
            System.out.println("Lo siento, no ha trabajado esta semana.");
        }else{
            System.out.println("Error en la hora introducida. Las horas deben ser un número positivo");
        }

    }
}
