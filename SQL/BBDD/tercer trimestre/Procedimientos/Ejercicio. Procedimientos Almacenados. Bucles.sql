-- Creación de la base de datos
DROP DATABASE IF EXISTS switchcasepa;
CREATE DATABASE switchcasepa;
USE switchcasepa;

-- Creación del procedimiento
DROP PROCEDURE IF EXISTS numAleatorio;
DELIMITER //
CREATE PROCEDURE numAleatorio()
BEGIN
	-- Declaración del contador para el bucle LOOP
	declare contador int DEFAULT 0;
    -- Creación de la tabla donde guardaremos los números aleatorios
	DROP TABLE IF EXISTS numeros;
    CREATE TABLE numeros(num INT);
		-- Inicio del bucle
        generarAleatorio: loop
        -- Inserción de valores aleatorios
            INSERT INTO numeros VALUES ((RAND() *10));
            -- Actualización del contador
            SET contador = contador+1;
            -- Condición de salida del bucle
            if contador = 2 then
            leave generarAleatorio;
            end if;
        end loop;
        SELECT * FROM numeros;
END//
DELIMITER ;
-- Llamada a la función
CALL numAleatorio();
