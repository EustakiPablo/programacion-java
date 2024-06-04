DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;
-- Configuramos la variable global que nos permite la recursividad durante la sesión
SET @@session.max_sp_recursion_depth = 255; 
DROP PROCEDURE IF EXISTS fibonacci;
DELIMITER //
-- Para el procedimiento necesitamos los 2 primeros números de la sucesión, un booleano y la cadena donde lo guardaremos
CREATE PROCEDURE fibonacci(IN num1 INT, IN num2 INT,IN primero BOOLEAN ,INOUT cadena LONGTEXT)
	BEGIN
		-- Declaramos la variable donde haremos las sumas de los números
		DECLARE numeroIntroducir INT;
        -- En caso de ser la primera vez que entramos realizaremos lo siguiente
        IF primero = TRUE THEN
			-- Cambiamos el booleano
			SET primero = FALSE;
            -- Ponemos los 2 primeros números
            SET cadena = CONCAT("0, 1, ");
            -- Llamamos al procedimiento de nuevo
            CALL fibonacci(num1,num2,primero,cadena);
		-- A partir de la segunda vez que llamamos al procedimiento: 
		ELSE
			-- Hasta que num2 sea mayor o igual que 21
			IF num2 <21 THEN
				-- Calculamos el numero que vamos a añadir a la cadena
				SET numeroIntroducir = num1+num2;
				-- Lo añadimos
                SET cadena = CONCAT(cadena,CAST(numeroIntroducir AS CHAR(2)),", ");
                -- Cambiamos los valores de nuestras variables
                SET num1=num2;
                SET num2=numeroIntroducir;
                -- Llamamos al procedimiento de nuevo
                CALL fibonacci(num1,num2,primero,cadena);
            END IF;
        END IF;
        -- SET cadena = SUBSTR(cadena,1,LENGTH(cadena)-2);
        -- SET numeroIntroducir = num1+num2;
	END //
DELIMITER ;

SET @fibo="";
CALL fibonacci(0,1,TRUE,@fibo);
SELECT substr(@fibo,1,LENGTH(@fibo)-2);