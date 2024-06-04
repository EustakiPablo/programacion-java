DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;
-- Procedimiento con 4 parámetros de entrada para las 4 notas
DROP PROCEDURE IF EXISTS media;
DELIMITER // 
CREATE PROCEDURE media(IN nota1 FLOAT, IN nota2 FLOAT,IN nota3 FLOAT,IN nota4 FLOAT)
	BEGIN
        -- Mostramos por pantalla las notas
        SELECT AVG(nota1+nota2+nota3+nota4);
	END //
DELIMITER ;

CALL media(7,8,2,7);

