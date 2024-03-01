package examenOtraClase;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) throws IOException {
        /*
        Empleados e1 = new Empleados("Paco","Jimenez","Paca","Recursos humanos");
        Empleados e2 = new Empleados("Paca","Jimenez","Francisco","Recursos humanos");
        empleados.add(e1);
        empleados.add(e2);*/
        try(Scanner teclado = new Scanner(System.in)){
            //no parar
            ArrayList<Empleados> empleados = new ArrayList<>();
            boolean parar = false;
            while(!parar){
                System.out.println("Introduce el nombre del empleado: ");
                String nombre = teclado.next();
                System.out.println("Introduce el apellido: ");
                String apellido = teclado.next();
                System.out.println("Introduce el nombre del jefe:");
                String jefe = teclado.next();
                System.out.println("Introduce el departamento:");
                String dep = teclado.next();
                Empleados e = new Empleados(nombre,apellido,jefe,dep);
                empleados.add(e);
                System.out.println("Introduce que operación quieres realizar:\n1- crear nuevo empleado\n2- generar cartas");
                int opcion = teclado.nextInt();
                switch (opcion){
                    case 1:
                        break;
                    case 2:
                        parar = true;
                        break;
                }

            }
            for (int i = 0; i < empleados.size(); i++) {
                String nomCarta = "carta"+String.valueOf(i)+".txt";
                try(FileWriter escribir = new FileWriter(nomCarta);){
                    escribir.write("Estimado "+empleados.get(i).getNombre()+" "+empleados.get(i).getApellido()+"\n" +
                            "\n" +
                            " \n" +
                            "\n" +
                            "Me dirijo a usted para expresar mi más sincero agradecimiento por su dedicación y arduo trabajo en nuestra empresa. Sus contribuciones han sido verdaderamente excepcionales y han tenido un impacto significativo en nuestro éxito.\n" +
                            "\n" +
                            "Desde que se unió a nuestro equipo, ha demostrado una ética de trabajo y una habilidad sobresalientes para enfrentar desafíos y superar obstáculos. Su compromiso con la excelencia ha sido inspirador para nosotros y nos ha impulsado a elevar aún más nuestros estándares.\n" +
                            "\n" +
                            ""+empleados.get(i).getNombre()+" sabemos apreciar su trabajo incansable y su dedicación son invaluables para nuestra empresa, y valoramos su presencia en nuestro equipo. Nos complace tener a alguien tan comprometido, motivado y talentoso como usted trabajando con nosotros.\n" +
                            "\n" +
                            "De nuevo, le agradecemos "+empleados.get(i).getApellido()+" sinceramente su trabajo y esperamos continuar trabajando juntos en el futuro. Si hay algo que podamos hacer para apoyarlo en su carrera o en su trabajo, no dude en hacérnoslo saber.\n" +
                            "\n" +
                            "Sinceramente,\n" +
                            "\n" +
                            ""+empleados.get(i).getJefe()+" "+empleados.get(i).getDepartamento()+"");
                }
            }
        }
    }
}
