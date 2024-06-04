DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

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

ALTER TABLE coches ADD COLUMN oferta INT;
ALTER TABLE coches ADD COLUMN precio_descuento FLOAT;
UPDATE coches SET oferta = 7 WHERE id = 1;
UPDATE coches SET oferta = 5 WHERE id = 2;
UPDATE coches SET oferta = 9 WHERE id = 3;
UPDATE coches SET oferta = 10 WHERE id = 4;
UPDATE coches SET oferta = 6 WHERE id = 5;

DROP PROCEDURE IF EXISTS calcularPrecioOferta;
DELIMITER //
CREATE PROCEDURE calcularPrecioOferta()
	BEGIN
		-- El contador con el que iteraremos sobre la tabla por el ID
		DECLARE contador TINYINT DEFAULT 1;
        WHILE contador <= (SELECT COUNT(*) FROM coches) DO
			-- Actualizamos el campo precio_descuento para cada coche
			UPDATE coches SET precio_descuento = precio-precio*oferta/100 WHERE id = contador;
            SET contador = contador+1;
        END WHILE;
        -- Mostramos toda la tabla
        SELECT * FROM coches;
	END //
DELIMITER ;
CALL calcularPrecioOferta();
