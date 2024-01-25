package ejercicio2;

public class Principal {
    public static void main(String[] args) {
        String[] notas = {"do","re","mi","fa","sol","la","si"};
        int largo = (int) ((Math.random()*28)+4);
        while (largo%4 != 0){
            largo = (int) ((Math.random()*28)+4);
        }
        System.out.println(largo);
        int aleat = (int) (Math.random()*6);
        String primeraNota = notas[aleat];
        while(largo!=0){
            int x = 4;
            boolean ultimo = false;
            if (largo==4){
                ultimo= true;
                x=3;
            }
            for (int i = 0; i < x; i++) {
                System.out.print(notas[aleat]+" ");
                aleat = (int) (Math.random()*6);
            }
            if (ultimo){
                System.out.print(primeraNota+" ");
            }
            System.out.print("| ");
            largo = largo-4;
        }
        System.out.print("| ");
    }
}
