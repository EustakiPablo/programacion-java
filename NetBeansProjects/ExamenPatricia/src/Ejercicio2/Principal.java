/*
Excepciones (2.5 puntos). L@s pesad@s de segundo de DAW, que casi no tienen tiempo para nada,
nos han vuelto a pedir ayuda. En este caso en la interfaz de inicio de sesión se han planteado
comprobar si el usuario introduce bien un correo electrónico. Para ello nos plantean tratar las
excepciones en la entrada de datos. Vamos a recoger un tipo de dato String con un formato de
correo electrónico: hola@damiansu.com.

Quieren controlar los siguientes errores, en el caso de que se produzcan lanzarán un error con el mensaje pertinente:

Que tenga el símbolo @
Que acabe por un dominio válido, en nuestro caso será .com y .es
Y que nunca empiece por un número el correo
 */
package Ejercicio2;

public class Principal {

    public static void main(String[] args) {

        try {
            System.out.println("Vamos al leer el correo");
            String correo = "hola@damiansu.ala";
            System.out.println(correo);

            if (!correo.contains("@")) {
                throw new ExcepcionArroba();
            }

            if (correo.startsWith("1") || correo.startsWith("2") || correo.startsWith("3") || correo.startsWith("4") || correo.startsWith("5") || correo.startsWith("6") || correo.startsWith("7") || correo.startsWith("8") || correo.startsWith("9")) {
                throw new ExcepcionNumero();
            }
            
            if(!correo.contains(".com") && !correo.contains(".es")){
                throw new ExcepcionExtension();
            }

        } catch (ExcepcionArroba a) {
            a.mensajeExcepcionA();

        } catch (ExcepcionNumero b) {
            b.mensajeExcepcionN();
        } catch (ExcepcionExtension c){
            
        }

    }

}
