package cercanias;



public class Principal {
    public static void main(String[] args) {
        //PERSONAL
        Personal p1 = new Personal("Empresa1");
        Maquinista m1 = new Maquinista("Paco","00000001",900.00,"Bajo");
        Maquinista m2 = new Maquinista("Paca","00000002",900.10,"Bajo");
        Mecanico mec1 = new Mecanico("Meca1","00000003","2694967","Ninguna");
        JefeEstacion jefe1 = new JefeEstacion("JefeCabron1","00000000000000002");
        p1.addJefe(jefe1);
        p1.addMaquinista(m1);
        p1.addMaquinista(m2);
        p1.addMecanico(mec1);
        p1.verMecanicos();
        p1.verJefesProyecto();
        p1.verMaquinistas();
        //VAGONES
        Vagon v1 = new Vagon(10,5,"Peligrosa");
        Vagon v2 = new Vagon(5,2,"Peligrosa");
        Vagon v3 = new Vagon(10,6,"Agua");
        Vagon v4 = new Vagon(10,7,"Comida");
        //LOCOMOTORA
        Locomotora l1 = new Locomotora("1234","Muy potente","muy antigua",mec1);
        l1.visualizar();
        //tren
        Tren t1 = new Tren(m1,l1);
        t1.addVagon(v1);
        t1.addVagon(v2);
        t1.addVagon(v3);
        t1.addVagon(v4);
        System.out.println("----------------- \n TREN:");
        t1.verTren();
        //Maquinaria
        Maquinaria maqui = new Maquinaria("Empresa1");
        maqui.addTren(t1);
        System.out.println("Cantidad de trenes: "+maqui.cantidadTrenes());

    }
}
