package cercanias;

public class Vagon {
    private int capacidad;
    private int cargaActual;
    private String mercancia;

    public Vagon() {
    }

    public Vagon(int capacidad, int cargaActual, String mercancia) {
        this.capacidad = capacidad;
        this.cargaActual = cargaActual;
        this.mercancia = mercancia;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public int getCargaActual() {
        return cargaActual;
    }

    public void setCargaActual(int cargaActual) {
        this.cargaActual = cargaActual;
    }

    public String getMercancia() {
        return mercancia;
    }

    public void setMercancia(String mercancia) {
        this.mercancia = mercancia;
    }
}
