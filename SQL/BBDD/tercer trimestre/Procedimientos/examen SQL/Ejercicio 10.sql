DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

ALTER TABLE coches ADD COLUMN stock INT;
UPDATE coches SET stock = 10 WHERE id = 1;
UPDATE coches SET stock = 40 WHERE id = 2;
UPDATE coches SET stock = 15 WHERE id = 3;
UPDATE coches SET stock = 68 WHERE id = 4;
UPDATE coches SET stock = 102 WHERE id = 5;

DROP PROCEDURE IF EXISTS mostrarCochesPorStock;
DELIMITER //
CREATE PROCEDURE mostrarCochesPorStock()
	BEGIN
		-- Mostramos todos los datos de los coches en orden de mayor a menor por stock
		SELECT * FROM coches ORDER BY stock DESC;
	END //
DELIMITER ;
CALL mostrarCochesPorStock();