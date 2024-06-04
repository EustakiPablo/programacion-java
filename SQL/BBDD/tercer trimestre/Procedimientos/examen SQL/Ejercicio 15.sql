DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

DROP FUNCTION IF EXISTS cuantosCochesMasPrecio20000;
DELIMITER //
CREATE FUNCTION cuantosCochesMasPrecio20000() RETURNS INT READS SQL DATA
	BEGIN
		-- Devolvemos un INT que será la cantidad de coches con mayor precio que 20000€
        RETURN (SELECT COUNT(*) FROM coches WHERE precio > 20000);
	END //
DELIMITER ;

SELECT cuantosCochesMasPrecio20000();
