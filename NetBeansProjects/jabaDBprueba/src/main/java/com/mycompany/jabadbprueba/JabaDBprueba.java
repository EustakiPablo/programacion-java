/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.jabadbprueba;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Cristian
 */
public class JabaDBprueba {

    public static void main(String[] args) {
        try(Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/prueba","root","");){
            Statement stmt = c.createStatement();
            stmt.execute("INSERT INTO usuarios VALUES (1,'Cristian')");
        } catch (SQLException ex) {
            Logger.getLogger(JabaDBprueba.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
