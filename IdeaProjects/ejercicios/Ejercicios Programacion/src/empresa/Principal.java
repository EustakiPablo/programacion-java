package empresa;

public class Principal {
    public static void main(String[] args) {
        Empresa e = new Empresa("Zara");
        e.anyadirProgramador("Ana",23);
        e.anyadirProgramador("Mario",2);
        //e.visualizarProgramadores();
        System.out.println(e.calcularSueldos());
        e.eliminarProgramador("Mario");
        e.visualizarProgramadores();
        System.out.println(e.calcularSueldos());
    }
}
