-- Creación de la base de datos
DROP DATABASE IF EXISTS switchcasepa;
CREATE DATABASE switchcasepa;
USE switchcasepa;
-- Permitimos la recursividad
SET @@session.max_sp_recursion_depth = 10; 
-- Creamos el procedimiento potencia con 2 entradas(base, exponente) y 1 salida (resultado)
DROP PROCEDURE IF EXISTS potencia;
delimiter //
CREATE PROCEDURE potencia(IN base INT, IN exponente INT, OUT resultado INT)
BEGIN
	-- Si el exponente vale 0 el resultado siempre es 1
	IF exponente = 0 THEN
		SET resultado = 1;
	ELSE
		-- Llamamos de nuevo al procedimiento restando uno al exponente
		CALL potencia(base,exponente-1,resultado);
        -- Asignamos el resultado
		SET resultado = resultado*base;
	END IF;
END //
delimiter ;

-- Llamamos al procedimiento
SET @result = 0;

CALL potencia(2,3,@result);
-- Mostramos el resultado
SELECT @result;
