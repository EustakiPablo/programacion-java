package conexion;

import java.sql.*;

public class Principal {
    public static void main(String[] args){
        String url = "jdbc:mysql://localhost:3306/tienda";
        try(
                Connection con = DriverManager.getConnection(url,"user-tienda","PIZARRA123");
                Statement sentencia = con.createStatement();
        ){
            int registros = 0;//variable que almacena los registros afectados
            System.out.println("Empezamos");
            String query1 = "SELECT * FROM producto;";

            System.out.println("He recogido el cursor");
            String insertar = "INSERT INTO producto VALUES(12,'MAC mini',45,1)";
            try{
                registros = sentencia.executeUpdate(insertar);

                System.out.println("Se han insertado "+registros+" registros");
            }catch (SQLException e){
                System.out.println("Error en la inserción: "+e.getMessage());
            }
            String actualizar = "UPDATE producto SET precio=600 WHERE id=12;";
            try{
                registros = sentencia.executeUpdate(actualizar);
            }catch (SQLException e){
                System.out.println("Error en la inserción: "+e.getMessage());
            }
            ResultSet cursor = sentencia.executeQuery(query1);
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
            /*query1 = "INSERT INTO fabricante VALUES (10,'Damian')";
            int resultado = sentencia.executeUpdate(query1);
            System.out.println(resultado);*/

            String borrado = "DELETE FROM producto WHERE id = 12;";
            try{
                registros = sentencia.executeUpdate(borrado);

                System.out.println("Se han borrado "+registros+" registros.");
            }catch (SQLException e){
                System.out.println("Error en la inserción: "+e.getMessage());
            }






        }catch (SQLException e){
            System.out.println("Falla: "+e.getMessage());
        }
    }
}
