import java.sql.*;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/rentacar";

        try(
                Scanner teclado = new Scanner(System.in);
                Connection c = DriverManager.getConnection(url,"root","fp.2023");
                Statement stmt = c.createStatement();

        ){
            boolean salir = false;
            while (!salir){
                System.out.println("1. Clientes\n2. Vehículos\n3. Alquileres\n4. Cerrar el programa");
                String seleccion = teclado.next();
                switch (seleccion){
                    case "1":
                        System.out.println("1. Mostrar registros\n" +
                                "2. Insertar registros\n" +
                                "3. Actualizar registros\n" +
                                "4. Borrar registros\n" +
                                "5. (0 ir al menú anterior)");
                        seleccion = teclado.next();
                        switch (seleccion){
                            case "1":
                                ResultSet resultado = stmt.executeQuery("SELECT * FROM clientes");
                                while (resultado.next()){
                                    System.out.println(resultado.getInt(1)+" "+resultado.getString(2));
                                }
                                System.out.println("");
                                break;
                            case "2":
                                int registros = 0;
                                try(PreparedStatement pstmt = c.prepareStatement("INSERT INTO clientes(ID_Cliente,Nombre,Apellido1,MedioPago,TipoCarnet,NumCarnet,Telefono,Direccion1,Ciudad,Email) VALUES (?,?,?,?,?,?,?,?,?,?)");){
                                    System.out.println("Id:");
                                    pstmt.setInt(1,teclado.nextInt());
                                    System.out.println("Nombre:");
                                    pstmt.setString(2,teclado.next());
                                    System.out.println("Apellido1");
                                    pstmt.setString(3,teclado.next());
                                    System.out.println("Medio de pago");
                                    pstmt.setString(4,teclado.next());
                                    System.out.println("Tipo Carnet");
                                    pstmt.setString(5,teclado.next());
                                    System.out.println("Numero carnet");
                                    pstmt.setString(6,teclado.next());
                                    System.out.println("Teléfono");
                                    pstmt.setString(7,teclado.next());
                                    System.out.println("Direccion1");
                                    pstmt.setString(8,teclado.next());
                                    System.out.println("Ciudad");
                                    pstmt.setString(9,teclado.next());
                                    System.out.println("Email");
                                    pstmt.setString(10,teclado.next());
                                    registros = pstmt.executeUpdate();
                                }
                                break;
                            case "3":
                                try(PreparedStatement pstmt = c.prepareStatement("UPDATE clientes SET Nombre = ? WHERE ID_Cliente = ?")){
                                    System.out.println("ID:");
                                    pstmt.setInt(2,teclado.nextInt());
                                    System.out.println("Nuevo nombre:");
                                    pstmt.setString(1,teclado.next());
                                    registros = pstmt.executeUpdate();
                                }
                                break;
                            case "4":
                                try(PreparedStatement pstmt = c.prepareStatement("DELETE FROM clientes WHERE ID_Cliente = ?")){
                                    System.out.println("ID:");
                                    pstmt.setInt(1,teclado.nextInt());
                                    registros = pstmt.executeUpdate();
                                }
                                break;
                            case "5":
                                System.out.println("Saliendo al menú anterior");
                                break;
                            default:
                                System.out.println("No es un valor válido");
                        }
                        break;
                    case "2":
                        System.out.println("1. Mostrar registros\n" +
                                "2. Insertar registros\n" +
                                "3. Actualizar registros\n" +
                                "4. Borrar registros\n" +
                                "5. (0 ir al menú anterior)");
                        seleccion = teclado.next();
                        switch (seleccion){
                            case "1":
                                ResultSet resultado = stmt.executeQuery("SELECT * FROM vehiculos");
                                while (resultado.next()){
                                    System.out.println(resultado.getInt(1)+" "+resultado.getString(2));
                                }
                                System.out.println("");
                                break;
                            case "2":
                                int registros = 0;
                                try(PreparedStatement pstmt = c.prepareStatement("INSERT INTO vehiculos() VALUES ()");){

                                    registros = pstmt.executeUpdate();
                                }
                                break;
                            case "3":
                                try(PreparedStatement pstmt = c.prepareStatement("UPDATE vehiculos SET  WHERE ")){

                                    registros = pstmt.executeUpdate();
                                }
                                break;
                            case "4":
                                try(PreparedStatement pstmt = c.prepareStatement("DELETE FROM vehiculos WHERE ")){

                                    registros = pstmt.executeUpdate();
                                }
                                break;
                            case "5":
                                System.out.println("Saliendo al menú anterior");
                                break;
                            default:
                                System.out.println("No es un valor válido");
                        }
                        break;
                    case "3":
                        System.out.println("1. Mostrar registros\n" +
                                "2. Insertar registros\n" +
                                "3. Actualizar registros\n" +
                                "4. Borrar registros\n" +
                                "5. (0 ir al menú anterior)");
                        seleccion = teclado.next();
                        switch (seleccion){
                            case "1":
                                ResultSet resultado = stmt.executeQuery("SELECT * FROM alquileres");
                                while (resultado.next()){
                                    System.out.println(resultado.getInt(1)+" "+resultado.getString(2));
                                }
                                System.out.println("");
                                break;
                            case "2":
                                int registros = 0;
                                try(PreparedStatement pstmt = c.prepareStatement("INSERT INTO alquileres() VALUES ()");){

                                    registros = pstmt.executeUpdate();
                                }
                                break;
                            case "3":
                                try(PreparedStatement pstmt = c.prepareStatement("UPDATE alquileres SET  WHERE ")){

                                    registros = pstmt.executeUpdate();
                                }
                                break;
                            case "4":
                                try(PreparedStatement pstmt = c.prepareStatement("DELETE FROM alquileres WHERE ")){

                                    registros = pstmt.executeUpdate();
                                }
                                break;
                            case "5":
                                System.out.println("Saliendo al menú anterior");
                                break;
                            default:
                                System.out.println("No es un valor válido");
                        }
                        break;
                    case "4":
                        salir = true;
                        break;
                    default:
                        System.out.println("No es una opción válida");
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
