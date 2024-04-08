package conexion;

import java.sql.*;

public class Principal {
    public static void main(String[] args){
        String url = "jdbc:mysql://localhost:3306/tienda";
        try(
                Connection con = DriverManager.getConnection(url,"user-tienda","PIZARRA123");
                Statement sentencia = con.createStatement();
        ){
            System.out.println("Empezamos");
            String query1 = "SELECT * FROM producto;";
            ResultSet cursor = sentencia.executeQuery(query1);
            System.out.println("He recogido el cursor");
            while (cursor.next()){
                int id = cursor.getInt(1);
                int idFabricante = cursor.getInt(4);
                String nombre = cursor.getString("nombre");
                Double precio = cursor.getDouble("precio");
                System.out.println(id+" "+nombre+" "+precio+" "+idFabricante);
            }
            System.out.println("------------------------------------------");
            query1 = "SELECT * FROM fabricante";
            cursor = sentencia.executeQuery(query1);
            while (cursor.next()){
                int codigo = cursor.getInt(1);
                String nombre = cursor.getString(2);
                System.out.println(codigo+" "+nombre);
            }
            query1 = "INSERT INTO fabricante VALUES (10,'Damian')";
            int resultado = sentencia.executeUpdate(query1);
            System.out.println(resultado);
        }catch (SQLException e){
            System.out.println("Falla: "+e.getMessage());
        }
    }
}
