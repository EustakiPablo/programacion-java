package vendedores;

public class Vendedor {
    private String nombre;
    private double mes1;
    private double mes2;
    private double mes3;
    private double mes4;
    private double mes5;
    private double mes6;
    private double mes7;
    private double mes8;
    private double mes9;
    private double mes10;
    private double mes11;
    private double mes12;
    private static double total;
    public Vendedor(String nombre, double mes1, double mes2, double mes3, double mes4, double mes5, double mes6, double mes7, double mes8, double mes9, double mes10, double mes11, double mes12) {
        this.nombre = nombre;
        this.mes1 = mes1;
        this.mes2 = mes2;
        this.mes3 = mes3;
        this.mes4 = mes4;
        this.mes5 = mes5;
        this.mes6 = mes6;
        this.mes7 = mes7;
        this.mes8 = mes8;
        this.mes9 = mes9;
        this.mes10 = mes10;
        this.mes11 = mes11;
        this.mes12 = mes12;
        this.total+=mes1+mes2+mes3+mes4+mes5+mes6+mes7+mes8+mes9+mes10+mes11+mes12;
    }
    public void showObject(){
        System.out.println("----------------------------");
        System.out.println("Los datos introducidos son: ");
        System.out.println("Nombre: "+nombre);
        System.out.println("Mes 1: "+mes1);
        System.out.println("Mes 2: "+mes2);
        System.out.println("Mes 3: "+mes3);
        System.out.println("Mes 4: "+mes4);
        System.out.println("Mes 5: "+mes5);
        System.out.println("Mes 6: "+mes6);
        System.out.println("Mes 7: "+mes7);
        System.out.println("Mes 8: "+mes8);
        System.out.println("Mes 9: "+mes9);
        System.out.println("Mes 10: "+mes10);
        System.out.println("Mes 11: "+mes11);
        System.out.println("Mes 12: "+mes12);
        System.out.println("----------------------------");
    }
    public void salir(){
        System.out.println("Total de ventas: "+total);
    }
}
