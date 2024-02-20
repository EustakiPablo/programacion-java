package ejer003;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        try(Scanner teclado = new Scanner(System.in);){
            System.out.println("Introduce un teléfono");
            String telefono = teclado.next();
            Long numTelefono = Long.parseLong(telefono);
            if (telefono.length()!=9){
                throw new TelefonoLenght(telefono.length());
                //throw new TelefonoLenght();
            }

            if (!telefono.startsWith("6")&&!telefono.startsWith("7")&&!telefono.startsWith("8")){
                throw new TelefonoErroneo();
            }
            System.out.println("Teléfono recogido correctamente "+telefono);
        }catch (NumberFormatException e){
            System.out.println(e.getMessage());
        } catch (TelefonoLenght e){
            System.out.println(e.getMessage());
        } catch (TelefonoErroneo e){
            System.out.println(e.getMessage());
        }
    }
}
