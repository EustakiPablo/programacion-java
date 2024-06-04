DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

DROP PROCEDURE IF EXISTS sumaDe5En5;
DELIMITER //
CREATE PROCEDURE sumaDe5En5(IN num1 INT, IN num2 INT, OUT sumaFinal INT)
	BEGIN
		-- Variables con las que trabajaremos puesto que hay que saber cual es la mayor en los parámetros de entrada
		DECLARE mayor INT;
        DECLARE menor INT;
        -- Acumulador de la suma
        DECLARE acumuladorSuma INT DEFAULT 0;
        -- Comprobamos cual de los 2 parámetros es mayor
        IF num1<num2 THEN
			SET mayor = num2;
            SET menor = num1;
		ELSE
			SET mayor = num1;
            SET menor = num2;
        END IF;
        -- Calculamos de 5 en 5 hasta que los 2 números sean "iguales"
        WHILE menor <= mayor DO
			SET acumuladorSuma = acumuladorSuma+menor;
            SET menor = menor+5;
        END WHILE;
        -- Parametro de salida con el que sacamos el valor resultante
        SET sumaFinal = acumuladorSuma;
	END //
DELIMITER ;
SET @resultado = 0;
CALL sumaDe5En5(5,20,@resultado);
-- Mostramos el resultado
SELECT @resultado;