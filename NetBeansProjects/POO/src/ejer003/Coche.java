/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejer003;

/**
 *
 * @author FP
 */
public class Coche {
    private String marca;
    private String modelo;
    public Coche(String marca, String modelo){
        this.marca = marca;
        this.modelo = modelo;
    }
    public Coche(){
        this.marca="Porche";
        this.modelo="Cayenne";
    }
    public Coche(String modelo){
        this.marca = "Porsche";
        this.modelo = modelo;
    }
    public void setMarca(String marca){
        this.marca = marca;
    }
    public void setModelo(String modelo){
        this.modelo = modelo;
    }
    public String getMarca(){
        return marca;
    }
    public String getModelo(){
        return modelo;
    }
}
