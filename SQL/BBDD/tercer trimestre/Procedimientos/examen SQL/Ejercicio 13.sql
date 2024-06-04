DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;



DROP FUNCTION IF EXISTS numerosDe7En7;
DELIMITER //
-- Necesitamos el número hasta el que mostraremos
-- Devolvemos un LONGTEXT porque no sabemos cuanto puede medir la cadena
CREATE FUNCTION numerosDe7En7(num INT) RETURNS LONGTEXT DETERMINISTIC
	BEGIN
		-- Contador que irá de 7 en 7
		DECLARE contador INT DEFAULT 7;
        -- Cadena donde iremos guardando los números
        DECLARE cadenaNumeros LONGTEXT DEFAULT "";
        -- Bucle que irá de 7 en 7 con la variable contador
        WHILE contador<= num DO
			-- Concatenamos los numeros casteados como un char
			SET cadenaNumeros = CONCAT(cadenaNumeros,CAST(contador AS CHAR(2)),", ");
            SET contador = contador+7;
        END WHILE;
        -- Retiramos la coma y el espacio del final para dejarlo bonito
        SET cadenaNumeros = SUBSTR(cadenaNumeros,1,LENGTH(cadenaNumeros)-2);
        RETURN cadenaNumeros;
	END //
DELIMITER ;
SELECT numerosDe7En7(70);