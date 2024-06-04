DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

DROP TABLE IF EXISTS empleados;
CREATE TABLE empleados(
	id TINYINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(10) NOT NULL,
    apellido1 VARCHAR(10) NOT NULL,
    apellido2 VARCHAR(10),
    telefono VARCHAR(9) NOT NULL,
    direccion VARCHAR(20),
    sueldo FLOAT
);

INSERT INTO empleados(nombre,apellido1,telefono,sueldo) VALUES ("Cristian","Falcon","987654321",1600);
INSERT INTO empleados(nombre,apellido1,telefono,sueldo) VALUES ("Empleado1","Apellido1","654987321",1600);
INSERT INTO empleados(nombre,apellido1,telefono,sueldo) VALUES ("Empleado2","Apellido2","963852741",1200);
INSERT INTO empleados(nombre,apellido1,telefono,sueldo) VALUES ("Empleado3","Apellido3","123456789",1700);
INSERT INTO empleados(nombre,apellido1,telefono,sueldo) VALUES ("Empleado4","Apellido4","741852963",1300);

DROP PROCEDURE IF EXISTS gananMenosDe1_5k;
DELIMITER //
CREATE PROCEDURE gananMenosDe1_5k()
	BEGIN
		-- Mostramos todos los datos de los empleados con un sueldo inferior de 1500
		SELECT * FROM empleados WHERE sueldo < 1500;
	END //
DELIMITER ;
CALL gananMenosDe1_5k();