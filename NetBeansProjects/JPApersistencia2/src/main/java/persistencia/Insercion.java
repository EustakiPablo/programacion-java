/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author FP
 */
public class Insercion {

    public static void main(String[] args) throws ParseException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("biblioteca");
        EntityManager em = emf.createEntityManager();
        String tfecha = "01/06/2024";
        SimpleDateFormat ffecha = new SimpleDateFormat("dd/MM/yyyy");
        Date fecha = ffecha.parse(tfecha);
        Libros l1 = new Libros("111-222","Historia de Mbappé","Florentino"," LaLiga",0.0,fecha);
        
        em.getTransaction().begin();
        em.persist(l1);
        em.getTransaction().commit();
        
        em.close();
        emf.close();
    }
}
