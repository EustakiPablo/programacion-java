/*Acumular cantidad de hijos en variable global*/
#Creamos base de datos
DROP DATABASE IF EXISTS paentradasalida;
CREATE DATABASE paentradasalida;
USE paentradasalida;
 drop table if exists empleados;
 
#Creamos tabla empleados
 create table empleados(
  documento varchar(9),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos int,
  seccion varchar(20),
  primary key(documento)
 );
#Insertamos registros
INSERT INTO empleados VALUES ("22222222A","Paco","Mer",1200.00,2,"Despacho");
INSERT INTO empleados VALUES ("22666666B","Si","No",1200.00,6,"Despacho");
INSERT INTO empleados VALUES ("31276393A","B","A",1200.00,0,"Despacho");

SET @cant = 0;
#Creación del procedimiento
DROP PROCEDURE IF EXISTS calc_hijos_glob;
DELIMITER //
CREATE PROCEDURE calc_hijos_glob(IN doc VARCHAR(9),INOUT contar INT)
BEGIN
	DECLARE cantHijos INT DEFAULT 0;
	SELECT cantidadhijos INTO cantHijos FROM empleados WHERE documento=doc;
    SET contar = contar+cantHijos;
END //
DELIMITER ;
CALL calc_hijos_glob("22222222A",@cant);
SELECT @cant;
CALL calc_hijos_glob("22666666B",@cant);
SELECT @cant;


#Comprobación de un DNI versión con String
DROP PROCEDURE IF EXISTS calc_dni;
DELIMITER //
CREATE PROCEDURE calc_dni(IN documento INT)
BEGIN
	DECLARE letra VARCHAR(23) DEFAULT "TRWAGMYFPDXBNJZSQVHLCKE";
    SELECT SUBSTR(letra,documento%23+1,1);
END //
DELIMITER ;

CALL calc_dni(49154478);



#Tabla DNI
DROP TABLE IF EXISTS dni;
CREATE TABLE dni(
	numero INT,
    letra CHAR
);
INSERT INTO dni VALUES (0,'T');
INSERT INTO dni VALUES (1,'R');
INSERT INTO dni VALUES (2,'W');
INSERT INTO dni VALUES (3,'A');
INSERT INTO dni VALUES (4,'G');
INSERT INTO dni VALUES (5,'M');
INSERT INTO dni VALUES (6,'Y');
INSERT INTO dni VALUES (7,'F');
INSERT INTO dni VALUES (8,'P');
INSERT INTO dni VALUES (9,'D');
INSERT INTO dni VALUES (10,'X');
INSERT INTO dni VALUES (11,'B');
INSERT INTO dni VALUES (12,'N');
INSERT INTO dni VALUES (13,'J');
INSERT INTO dni VALUES (14,'Z');
INSERT INTO dni VALUES (15,'S');
INSERT INTO dni VALUES (16,'Q');
INSERT INTO dni VALUES (17,'V');
INSERT INTO dni VALUES (18,'H');
INSERT INTO dni VALUES (19,'L');
INSERT INTO dni VALUES (20,'C');
INSERT INTO dni VALUES (21,'K');
INSERT INTO dni VALUES (22,'E');





#Comprobación de un DNI versión con Tabla
DROP PROCEDURE IF EXISTS calc_dni_tabla;
DELIMITER //
CREATE PROCEDURE calc_dni_tabla(IN documento INT)
BEGIN
    SELECT letra FROM dni WHERE numero = (documento%23);
END //
DELIMITER ;

CALL calc_dni(49154478);