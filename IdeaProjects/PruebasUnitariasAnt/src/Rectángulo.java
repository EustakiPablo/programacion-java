import java.util.Scanner;

public class Rectángulo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Solicitar al usuario la longitud y el ancho del rectángulo
        System.out.print("Introduce la longitud del rectángulo: ");
        double longitud = scanner.nextDouble();

        System.out.print("Introduce el ancho del rectángulo: ");
        double ancho = scanner.nextDouble();

        // Calcular el área del rectángulo
        double area = Rectangulo(longitud, ancho);

        // Mostrar el área del rectángulo
        System.out.println("El área del rectángulo es: " + area);

        scanner.close();
    }

    // Método para calcular el área del rectángulo
    public static double Rectangulo(double longitud, double ancho) {
        return longitud * ancho;
    }
}
