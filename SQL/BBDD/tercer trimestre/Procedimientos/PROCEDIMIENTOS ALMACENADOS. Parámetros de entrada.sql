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

INSERT INTO empleados VALUES ('1234567',"nombre1","apellido1",1200.0,2,"Contabilidad");
INSERT INTO empleados VALUES ('8765432',"nombre2","apellido2",1600.0,0,"ingeniero");
INSERT INTO empleados VALUES ('1928367',"nombre3","apellido3",2500.0,4,"Direccion");

DROP PROCEDURE IF EXISTS pa_empleados_sueldo;

DELIMITER //
CREATE PROCEDURE pa_empleados_sueldo(IN num DECIMAL(6,2))
BEGIN
	SELECT nombre,apellido,sueldo
    FROM empleados
    WHERE sueldo >= num;
END //
DELIMITER ;

CALL pa_empleados_sueldo(400);
CALL pa_empleados_sueldo(500);

DROP PROCEDURE pa_empleados_sueldo;

DROP PROCEDURE IF EXISTS pa_empleados_actualizar_sueldo;
DELIMITER //
CREATE PROCEDURE pa_empleados_actualizar_sueldo(IN num DECIMAL(6,2),IN actualizar DECIMAL(6,2))
BEGIN
	UPDATE empleados SET sueldo = actualizar WHERE sueldo = num;
END //
DELIMITER ;

CALL pa_empleados_actualizar_sueldo(1200,1500);
SELECT * FROM empleados;

CALL pa_empleados_actualizar_sueldo(1300);
