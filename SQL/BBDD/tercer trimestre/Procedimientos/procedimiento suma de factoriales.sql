DROP DATABASE IF EXISTS examen1;
CREATE DATABASE IF NOT EXISTS examen1;
USE examen1;
-- Comienzo del procedmiento
DROP PROCEDURE IF EXISTS sumaFactoriales;
DELIMITER //
CREATE PROCEDURE sumaFactoriales()
BEGIN
	-- numero que toca hacer factorial
	DECLARE num INT DEFAULT 1;
    -- acumulador de números hasta que sea igual a la variable num
    DECLARE acumulador INT DEFAULT 1;
    -- el numero que se mostrará
    DECLARE numFinal INT DEFAULT 0;
    -- valor del factiorial que se irá sumando en numFinal
    DECLARE fact INT DEFAULT 1;
    -- Bucle que define en qué numero estamos
    WHILE num <= 4 DO
		-- bucle que calcula el factorial
		WHILE acumulador <= num DO
			SET fact = fact*acumulador;
            SET acumulador = acumulador+1;
        END WHILE;
        -- Se suma el factoria al numFinal y se reinicia el acumulador y el factorial para la siguiente iteración del bucle
        -- SELECT fact;
        SET numFinal = numFinal+fact;
        set fact = 1;
        SET acumulador = 1; 
        SET num = num+1;
    END WHILE;
    SELECT numFinal;
END //
DELIMITER ;
CALL sumaFactoriales();