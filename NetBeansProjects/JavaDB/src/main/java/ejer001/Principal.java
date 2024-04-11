/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer001;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author FP
 */
public class Principal {
    public static void main(String[] args) {
        String url = "jdbc:derby://localhost:1527/tienda";
        try (
                Connection con = DriverManager.getConnection(url, "usertienda", "PIZARRA123");
                Statement sentencia = con.createStatement();
        ) {
            int registros = 0;
            String insertar = "INSERT INTO producto VALUES (?,?,?,?)";
            try(PreparedStatement sentenciaP = con.prepareStatement(insertar)){
                sentenciaP.setInt(1,13);
                sentenciaP.setString(2,"Teclado mecánico");
                sentenciaP.setDouble(3,159);
                sentenciaP.setInt(4,2);
                registros = sentenciaP.executeUpdate();
            }catch (SQLException e){
                System.out.println(e.getMessage());
            }
            String update = "UPDATE producto SET precio = ? WHERE id = ?";
            try(PreparedStatement sentenciaP = con.prepareStatement(update)){
                sentenciaP.setInt(1,30);
                sentenciaP.setInt(2,13);
                registros = sentenciaP.executeUpdate();
            }catch (SQLException e){
                System.out.println(e.getMessage());
            }

            String query1 = "SELECT * FROM producto";
            ResultSet cursor = sentencia.executeQuery(query1);
            while (cursor.next()){
                int id = cursor.getInt(1);
                int idFabricante = cursor.getInt(4);
                String nombre = cursor.getString("nombre");
                Double precio = cursor.getDouble("precio");
                System.out.println(id+" "+nombre+" "+precio+" "+idFabricante);
            }
            String delete = "DELETE FROM producto WHERE id = ?";
            try(PreparedStatement sentenciaP = con.prepareStatement(delete)){
                sentenciaP.setInt(1,13);
                registros = sentenciaP.executeUpdate();
            }catch (SQLException e){
                System.out.println(e.getMessage());
            }


        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
