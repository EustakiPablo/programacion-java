DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;
-- Añadimos nuevos campos para el peso en KG y la denominación que tendrá
ALTER TABLE coches ADD COLUMN peso INT;
ALTER TABLE coches ADD COLUMN denominacion_peso VARCHAR(10);

UPDATE coches SET peso = 900 WHERE id = 1;
UPDATE coches SET peso = 1600 WHERE id = 2;
UPDATE coches SET peso = 1400 WHERE id = 3;
UPDATE coches SET peso = 1300 WHERE id = 4;
UPDATE coches SET peso = 2000 WHERE id = 5;


DROP PROCEDURE IF EXISTS pesoCoches;
DELIMITER //
CREATE PROCEDURE pesoCoches()
	BEGIN
		-- Contador para recorrer la tabla con los ID
		DECLARE contador TINYINT DEFAULT 1;
        -- Bucle para iterar sobre toda la tabla coches
        WHILE contador <= (SELECT COUNT(*) FROM coches) DO
			-- En caso de que pese menos de 1000 KG
			IF (SELECT peso FROM coches WHERE id = contador)<1000 THEN
				UPDATE coches SET denominacion_peso = "Liviano" WHERE id = contador;
			-- En caso de que pese entre 1000KG y 1500KG
			ELSEIF (SELECT peso FROM coches WHERE id = contador)<=1500 THEN
				UPDATE coches SET denominacion_peso = "Pesado" WHERE id = contador;
			-- El resto de los casos
            ELSE
				UPDATE coches SET denominacion_peso = "Tanque" WHERE id = contador;
            END IF;
            SET contador = contador+1;
        END WHILE;
        -- Mostramos la tabla con las modificaciones
        SELECT * FROM coches;
	END //
DELIMITER ;
CALL pesoCoches();