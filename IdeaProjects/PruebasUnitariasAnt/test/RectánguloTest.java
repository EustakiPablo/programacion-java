import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;
public class RectánguloTest {
    @Test
    public void mult_4x2_returnsOcho(){
        final int expected = 8;
        final int actual = 4*2;
        //assertEquals(4 * 2, actual, expected);
        assertEquals(actual,expected);
    }

    @Test
    public void mult_4x5_returnsVeinte(){
        final int expected = 20;
        final int actual = 4*5;
        assertEquals(actual, expected);
    }
    @org.junit.Test
    public void main() {
    }

    @org.junit.Test
    public void rectangulo() {
    }
}