import java.util.Scanner;

public class HolaMundo {
    public static String contarLetras(String palabra){
        int numeroLetras = palabra.length();
        return "La palabra "+palabra+" tiene "+numeroLetras+" letras.";
    }

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        String hola = teclado.next();
        System.out.println(contarLetras(hola));
    }

}
