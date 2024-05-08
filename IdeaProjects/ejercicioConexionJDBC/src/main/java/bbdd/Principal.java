package bbdd;

import java.sql.*;

public class Principal {
    public static void main(String[] args) {
        String url = "jdbc:mysql://192.168.1.50:3306/pruebajdbc";
        String usuario = "cristian";
        String password = "putasTodas";
        try(Connection c = DriverManager.getConnection(url,usuario,password)){
            String tablaClientes = "CREATE TABLE IF NOT EXISTS empleados(" +
                    "id INT PRIMARY KEY," +
                    "nombre VARCHAR(10)," +
                    "apellido VARCHAR(10)" +
                    ");";
            try(Statement stmt = c.createStatement()){
                stmt.executeUpdate(tablaClientes);
            }
            try(PreparedStatement pstmt = c.prepareStatement("INSERT INTO empleados VALUES (?,?,?);")){
                pstmt.setInt(1,1);
                pstmt.setString(2,"cristian");
                pstmt.setString(3,"Falcon");
                pstmt.executeUpdate();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
            try(Statement stmt = c.createStatement()){
                ResultSet resultados = stmt.executeQuery("SELECT * FROM empleados;");
                while (resultados.next()){
                    int id = resultados.getInt(1);
                    String nombre = resultados.getString(2);
                    String apellido = resultados.getString(3);
                    System.out.println(id+" "+nombre+" "+apellido);
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
