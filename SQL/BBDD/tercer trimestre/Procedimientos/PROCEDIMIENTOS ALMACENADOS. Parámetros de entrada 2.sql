/**/
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
CREATE PROCEDURE pa_seccion(IN sec VARCHAR(20),OUT salidaAVG VARCHAR(10),OUT salidaMAX VARCHAR(10))
BEGIN
	DECLARE sueldoAVG VARCHAR(10) DEFAULT '';
    DECLARE sueldoMax VARCHAR(10) DEFAULT '';
	SELECT AVG(sueldo),MAX(sueldo) INTO sueldoAVG,sueldoMax
    FROM empleados
    WHERE seccion = sec;
    SELECT sueldoAVG INTO salidaAVG;
    SELECT sueldoMax INTO salidaMAX;
END //
DELIMITER ;

CALL pa_seccion("ingeniero",@promedio,@maximo);
SELECT promedio,maximo;

/*Prueba muy pocha para comprobar prioridad en variables globales y locales*/
DROP PROCEDURE IF EXISTS prueba_pocha;
DELIMITER //
CREATE PROCEDURE prueba_pocha(INOUT conta INT)
BEGIN
	SET conta = 1+conta;
    SELECT conta;
    SET @conta = conta+2;
    SELECT @conta;
END //
DELIMITER ;
SET @conta = 1;
CALL prueba_pocha(@conta);
SELECT @conta;
