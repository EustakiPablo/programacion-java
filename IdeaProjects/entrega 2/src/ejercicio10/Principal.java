package ejercicio10;

public class Principal {
    public static void main(String[] args) {
        int[] array = {5,1,3,1,5};
        int x = (array.length-1);
        int i = 0;
        boolean salgo = false;
        while (i< array.length && !salgo){
            if (!(array[i]==array[x])){
                salgo=true;
                System.out.println("No es capicua");
            }
            i++;
            x--;
        }
        if (!salgo){
            System.out.println("Es capicua");
        }
    }
}
