package persistencia;

import java.util.Date;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2024-04-16T14:12:44", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Libros.class)
public class Libros_ { 

    public static volatile SingularAttribute<Libros, String> editorial;
    public static volatile SingularAttribute<Libros, Date> fecha;
    public static volatile SingularAttribute<Libros, Double> precio;
    public static volatile SingularAttribute<Libros, String> isbn;
    public static volatile SingularAttribute<Libros, String> titulo;
    public static volatile SingularAttribute<Libros, String> autor;

}