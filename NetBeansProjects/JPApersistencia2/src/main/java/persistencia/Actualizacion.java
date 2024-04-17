/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author FP
 */
public class Actualizacion {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("biblioteca");
        EntityManager em = emf.createEntityManager();
        Libros l3 = em.find(Libros.class, "111-222");
        System.out.println(l3.toString());
        
        l3.setTitulo("Historia de Haaland2");
        
        em.getTransaction().begin();
        em.getTransaction().commit();
        
        em.close();
        emf.close();
    }
}
