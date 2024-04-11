DROP DATABASE IF EXISTS empresaEmpleados;
CREATE DATABASE IF NOT EXISTS empresaEmpleados;
USE empresaEmpleados;
DROP TABLE IF EXISTS empleados;

CREATE TABLE empleados(
  documento CHAR(8),
  nombre VARCHAR(20),
  apellido VARCHAR(20),
  sueldo DECIMAL(6,2),
  cantidadhijos INT,
  seccion VARCHAR(20),
  PRIMARY KEY(documento)
 );

INSERT INTO empleados VALUES ('1234567',"nombre1","apellido1",1200.0,2,"ingeniero");
INSERT INTO empleados VALUES ('8765432',"nombre2","apellido2",1600.0,0,"ingeniero");
INSERT INTO empleados VALUES ('1928367',"nombre3","apellido3",2500.0,4,"Direccion");

DROP PROCEDURE IF EXISTS pa_seccion;

DELIMITER //
CREATE PROCEDURE pa_seccion(IN sec VARCHAR(20))
BEGIN
	SELECT AVG(sueldo),MAX(sueldo)
    FROM empleados
    WHERE seccion = sec;
END //
DELIMITER ;

CALL pa_seccion("ingeniero");
