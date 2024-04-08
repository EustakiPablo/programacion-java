package ejer5;
import java.util.Scanner;
public class Principal {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.print("Por favor, introduzca las horas trabajadas esta semana: ");
        Double horas = Double.parseDouble(s.nextLine());
        double salario;

        if ((horas >= 0) && (horas <= 40)) {
            salario =12;
            System.out.println("El sueldo semanal que le corresponde es de " + salario + " €.");
        } else if (horas > 40){
            salario = (horas - 40) * 16;
            System.out.println("El sueldo semanal que le corresponde es de " + salario + " €.");
        } else if (horas < 0) {
            System.out.println("Error");
        }
    }
}

