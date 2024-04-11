/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package coche2;

/**
 *
 * @author FP
 */
public class Coche {
    private String marca;
    private String modelo;
    private static int contador;

    public Coche(String marca, String modelo) {
        this.marca = marca;
        this.modelo = modelo;
        contador++;
    }
    public static int getContador(){
        return contador;
    }
    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }
}
