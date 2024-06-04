DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

-- En este procedimiento calculamos lo que está a la izquierda del paréntesis
DROP PROCEDURE IF EXISTS parentesisIzquierda;
DELIMITER //
CREATE PROCEDURE parentesisIzquierda(OUT num FLOAT)
	BEGIN
		SET num = 1/3+2*5;
	END //
DELIMITER ;

-- En este procedimiento calculamos lo que está a la derecha del paréntesis
DROP PROCEDURE IF EXISTS parentesisDerecha;
DELIMITER //
CREATE PROCEDURE parentesisDerecha(OUT num FLOAT)
	BEGIN
		SET num = 4/5+3*2;
	END //
DELIMITER ;

-- En este procedimiento sumamos todo
DROP PROCEDURE IF EXISTS sumaParentesis;
DELIMITER //
CREATE PROCEDURE sumaParentesis(OUT resultado FLOAT)
	BEGIN
		DECLARE num1 FLOAT;
        DECLARE num2 FLOAT;
        -- Llamamos a los procedimientos que hemos realizado antes
        CALL parentesisIzquierda(num1);
        CALL parentesisDerecha(num2);
        SET resultado = num1+num2;
	END //
DELIMITER ;
SET @resultado = 0.0;
-- Mostramos el resultado
CALL sumaParentesis(@resultado);
SELECT @resultado;