/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer002;

/**
 *
 * @author FP
 */
public class Persona {

    private String nombre;
    private int edad;

    public int getEdad() {
        return edad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nuevoNombre) {
        nombre = nuevoNombre;
    }

    public void setEdad(int edad) {
        if (edad > 120) {
            this.edad = 120;
        }else{
            this.edad = edad;
        }
    }
}
