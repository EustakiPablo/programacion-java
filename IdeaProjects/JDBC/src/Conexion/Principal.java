package Conexion;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import  java.sql.ResultSet;

public class Principal {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/cafeteriamanolo";
        String user = "manolo";
        String password = "ChuckNorris2024";
        try(Connection c = DriverManager.getConnection(url,user,password);){
            System.out.println("Conexion correcta");
            String crearTablaSuppliers =
                    "create table SUPPLIERS " + "(SUP_ID integer NOT NULL, " +
                            "SUP_NAME varchar(40) NOT NULL, " + "STREET varchar(40) NOT NULL, " +
                            "CITY varchar(20) NOT NULL, " + "STATE char(2) NOT NULL, " +
                            "ZIP char(5), " + "PRIMARY KEY (SUP_ID))";
            String crearTablaCoffees =
                    "create table COFFEES " + "(COF_NAME varchar(32) NOT NULL, " +
                            "SUP_ID int NOT NULL, " + "PRICE numeric(10,2) NOT NULL, " +
                            "SALES integer NOT NULL, " + "TOTAL integer NOT NULL, " +
                            "PRIMARY KEY (COF_NAME), " +
                            "FOREIGN KEY (SUP_ID) REFERENCES SUPPLIERS (SUP_ID))";
            try (Statement stmt = c.createStatement()) {
                stmt.executeUpdate(crearTablaSuppliers);
            } catch (SQLException e) {
                if (e.getMessage().contains("already exist"))
                    System.out.println("La tabla ya existe");
                else {
                    System.out.println("Error entabla supliers "+e.getMessage());;
                }
            }
            try (Statement stmt = c.createStatement()) {
                stmt.executeUpdate(crearTablaCoffees);
            } catch (SQLException e) {
                if (e.getMessage().contains("already exist"))
                    System.out.println("La tabla ya existe");
                else {
                    System.out.println("Error entabla coffees "+e.getMessage());;
                }
            }

            try (Statement stmt = c.createStatement()) {
                stmt.executeUpdate("insert into SUPPLIERS " +
                        "values(49, 'Superior Coffee', '1 Party Place', " +
                        "'Mendocino', 'CA', '95460')");
                stmt.executeUpdate("insert into SUPPLIERS " +
                        "values(101, 'Acme, Inc.', '99 Market Street', " +
                        "'Groundsville', 'CA', '95199')");
                stmt.executeUpdate("insert into SUPPLIERS " +
                        "values(150, 'The High Ground', '100 Coffee Lane', " +
                        "'Meadows', 'CA', '93966')");
            } catch (SQLException e) {
                System.out.println(e.getMessage());
                System.out.println(e.getSQLState());
            }
            try (Statement stmt = c.createStatement()) {
                stmt.executeUpdate("insert into COFFEES " +
                        "values('Colombian', 00101, 7.99, 0, 0)");
                stmt.executeUpdate("insert into COFFEES " +
                        "values('French_Roast', 00049, 8.99, 0, 0)");
                stmt.executeUpdate("insert into COFFEES " +
                        "values('Espresso', 00150, 9.99, 0, 0)");
                stmt.executeUpdate("insert into COFFEES " +
                        "values('Colombian_Decaf', 00101, 8.99, 0, 0)");
                stmt.executeUpdate("insert into COFFEES " +
                        "values('French_Roast_Decaf', 00049, 9.99, 0, 0)");
            } catch (SQLException e) {
                System.out.println(e.getMessage());
                System.out.println(e.getSQLState());
            }
            String select = "SELECT * FROM coffees";
            try (Statement stmt = c.createStatement()) {
                ResultSet rs = stmt.executeQuery(select);
                String mayorQue = "";
                String menorQue = "";
                while (rs.next()) {
                    String coffeeName = rs.getString("COF_NAME");
                    int supplierID = rs.getInt("SUP_ID");
                    float price = rs.getFloat("PRICE");
                    int sales = rs.getInt("SALES");
                    int total = rs.getInt("TOTAL");
                    /*System.out.println(coffeeName + ", " + supplierID + ", " + price +
                            ", " + sales + ", " + total);*/
                    if (coffeeName.contains("Colombian")){
                        System.out.println("Se pueden comprar "+(200/price)+" cafés con 200€");
                    }
                    if (price>8){
                        mayorQue+=coffeeName+", ";
                    }else {
                        menorQue+=coffeeName+", ";
                    }
                }
                System.out.println("Los cafés que cuestan más de 8€ son: "+mayorQue);
                System.out.println("Los cafés que cuestan menos de 8€ son: "+menorQue);
            } catch (SQLException e) {
                System.out.println(e.getMessage());
                System.out.println(e.getSQLState());
            }
        }catch (SQLException o){
            System.out.println(o.getMessage());
        }
    }
}
