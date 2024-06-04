DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

-- Tabla necesaria para el ejercicio
DROP TABLE IF EXISTS coches;
CREATE TABLE coches(
	id TINYINT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(20),
    matricula VARCHAR(10),
    precio FLOAT
);
-- Insertamos valores en la tabla para consultarlos
INSERT INTO coches(marca,matricula,precio) VALUES ("Marca1","SAD-8596",20000.0);
INSERT INTO coches(marca,matricula,precio) VALUES ("Marca2","SAD-8596",18000.0);
INSERT INTO coches(marca,matricula,precio) VALUES ("Marca1","SAD-8596",25000.0);
INSERT INTO coches(marca,matricula,precio) VALUES ("Marca3","SAD-8596",50000.0);
INSERT INTO coches(marca,matricula,precio) VALUES ("Marca1","SAD-8596",16000.0);

DROP PROCEDURE IF EXISTS cochesMasDe19K;
DELIMITER //
CREATE PROCEDURE cochesMasDe19K()
	BEGIN
		-- Mostramos con una consulta todos los datos de los coches con precio mayor a 19000
		SELECT * FROM coches WHERE precio > 19000;
	END //
DELIMITER ;

CALL cochesMasDe19K();