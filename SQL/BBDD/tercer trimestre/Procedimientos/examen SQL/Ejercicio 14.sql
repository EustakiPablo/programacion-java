DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

DROP FUNCTION IF EXISTS areaRombo;
DELIMITER //
-- Necesitamos 2 parámetros, la diagonal mayor y la menor.
-- El valor que devolvemos es un FLOAT
CREATE FUNCTION areaRombo(diagMayor FLOAT, diagMenor FLOAT) RETURNS FLOAT DETERMINISTIC
	BEGIN
		-- Variable donde guardamos el resultado
		DECLARE resultado FLOAT;
        -- Calculamos y guardamos el resultado
        SET resultado = (diagMayor*diagMenor)/2;
        -- Devolvemos el resultado
        RETURN resultado;
	END //
DELIMITER ;

SELECT areaRombo(5,5);