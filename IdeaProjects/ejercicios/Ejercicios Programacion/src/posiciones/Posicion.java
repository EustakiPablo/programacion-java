package posiciones;

public class Posicion {
    private int x;
    private int y;

    public Posicion() {
        this.x=0;
        this.y=0;
    }

    public Posicion(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }
    public void incX(){
        this.x++;
    }
    public void decX(){
        this.x--;
    }
    public void incY(){
        this.y++;
    }
    public void decY(){
        this.y--;
    }
    public void showCoords(){
        System.out.println("x: "+x+" y: "+y);
    }

}
