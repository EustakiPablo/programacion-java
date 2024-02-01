package ejercicio3;

public class Principal {
    public static void main(String[] args) {
        for (int i = 1; i < 15; i++) {
            System.out.print((i)+".|");
            for (int j = 0; j < 3; j++) {
                int random = (int) (Math.random()*3+1);
                if (random==3){
                    System.out.print("X"+"|");
                }else {
                    System.out.print(random+"|");
                }
            }
            System.out.println();
        }
        int random = (int) (Math.random()*3+1);
        System.out.print("15.|");
        if (random==3){
            System.out.print("X"+"|");
        }else {
            System.out.print(random+"|");
        }
    }
}
