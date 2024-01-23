package cercanias;



public class Principal {
    public static void main(String[] args) {
        Personal p1 = new Personal("Empresa1");
        Maquinista m1 = new Maquinista("Paco","00000001",900.00,"Bajo");
        Maquinista m2 = new Maquinista("Paca","00000002",900.10,"Bajo");
        Mecanico mec1 = new Mecanico("Meca1","00000003","2694967","Ninguna");
        JefeProyecto jefe1 = new JefeProyecto("JefeCabron1","00000000000000002");
        p1.addJefe(jefe1);
        p1.addMaquinista(m1);
        p1.addMaquinista(m2);
        p1.addMecanico(mec1);
        p1.verMecanicos();
        p1.verJefesProyecto();
        p1.verMaquinistas();

    }
}
