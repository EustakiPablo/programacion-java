package ejercicio1;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        String[] nombrePuesto = {"Prog. Junior","Prog. senior","Jefe de proyecto"};
        double[] sueldoBase = {950,1200,1600};
        int[] irpf = {25,20};
        int irpfNum = 0;
        //Falso soltero, true casado
        boolean estado = false;
        System.out.println("1- Prog. Junior, 2- Prog. senior, 3- Jefe de proyecto");
        System.out.println("Introduce el puesto: ");
        int puestoUser = teclado.nextInt();
        System.out.println("1- Soltero, 2- Casado");
        System.out.println("Introduce tu estado civil: ");
        int estadoCivil = teclado.nextInt();
        if (estadoCivil==2){
            estado = true;
        }
        System.out.println("Introduce los días que has estado de viaje");
        int diasViajeUser = teclado.nextInt();
        System.out.println("Tu puesto es: "+nombrePuesto[puestoUser-1]);
        System.out.print("Estás: ");
        if (estado){
            System.out.println("casado.");
        }else{
            System.out.println("soltero.");
        }
        System.out.println("Tus dietas son: "+(30*diasViajeUser));
        System.out.println("Tu sueldo bruto es: "+(sueldoBase[puestoUser-1]+(30*diasViajeUser)));
        System.out.print("Tu base de IRPF es: ");
        if (estado == true){
            irpfNum=1;
            System.out.println("20%.");
        }else{
            irpfNum=0;
            System.out.println("25%.");
        }
        System.out.println("La cantidad a pagar del IRPF es: "+(sueldoBase[puestoUser-1]+(30*diasViajeUser))*irpf[irpfNum]/100);
        System.out.println("Tu sueldo neto es: "+ ((sueldoBase[puestoUser-1]+(30*diasViajeUser))-((sueldoBase[puestoUser-1]+(30*diasViajeUser))*irpf[irpfNum]/100)));
        System.out.println();
    }
}
