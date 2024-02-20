package ejer001;

public class Principal {
    public static void main(String[] args) {
        int x = 1;
        while (x <= 100) {
            if (x % 2 == 0) {
                System.out.printf("%2d", x);
                if (x % 10 == 0) {
                    System.out.print("\n");
                } else if (x != 100) {
                    System.out.print(" - ");
                }
            }
            x++;
        }
    }
}
