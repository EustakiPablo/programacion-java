package ejer010;

import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        Scanner teclado = new Scanner(System.in);
        FileOutputStream escribir = new FileOutputStream("cliente.dat");
        ObjectOutputStream escritura = new ObjectOutputStream(escribir);
        ArrayList<Cliente> clientesEscritura;
        FileInputStream leer = new FileInputStream("cliente.dat");
        ObjectInputStream objeto = new ObjectInputStream(leer);
        try {
            clientesEscritura = (ArrayList<Cliente>) objeto.readObject();
        }catch (EOFException s){
            clientesEscritura =new ArrayList<>();
        }


        boolean salgo = false;

        while (!salgo){
            System.out.println("1. Añadir nuevo cliente\n2.Modificar datos del cliente\n3. Dar de baja al cliente\n4. Listar clientes\n5. Para salir del programa");
            int opcion = teclado.nextInt();
            switch (opcion){
                case 1:
                    System.out.println("Introduce el nombre: ");
                    String nombre = teclado.next();
                    System.out.println("Introduce el teléfono");
                    String telefono = teclado.next();
                    Cliente c = new Cliente(nombre,telefono);
                    clientesEscritura.add(c);
                    System.out.println("Ha creado el usuario "+c.getNombre()+" con el id único "+c.getId());
                    break;
                case 2:
                    System.out.println("Indica a que cliente quieres modificar con su id: ");
                    int modId = teclado.nextInt();
                    boolean endEdit = false;
                    while(!endEdit){
                        System.out.println("Indica que dato quieres modificar: \n1. nombre\n2. telefono\n3. salir de modificar");
                        int modObj = teclado.nextInt();
                        switch (modObj){
                            case 1:
                                clientesEscritura.get(modId).setNombre(teclado.next());
                                break;
                            case 2:
                                clientesEscritura.get(modId).setTelefono(teclado.next());
                                break;
                            case 3:
                                endEdit = true;
                                break;
                        }
                    }
                    break;
                case 3:
                    System.out.println("Introduce la id para eliminar");
                    int deletObj = teclado.nextInt();
                    clientesEscritura.remove(deletObj);
                    break;
                case 4:
                    for (Cliente list : clientesEscritura){
                        list.visualizar();
                    }
                    break;
                case 5:
                    salgo = true;
                    escritura.writeObject(clientesEscritura);
                    escritura.close();
                    objeto.close();
                    break;
            }
        }
    }
}
