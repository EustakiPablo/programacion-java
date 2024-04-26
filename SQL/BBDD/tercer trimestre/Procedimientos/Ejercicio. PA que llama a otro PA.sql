/*Creación de base de datos*/
DROP DATABASE IF EXISTS pallamaotropa;
CREATE DATABASE pallamaotropa;
use pallamaotropa;

/*Creación del procedimiento para multiplicar columna de una tabla*/

DROP PROCEDURE IF EXISTS multiplicar;
DELIMITER //
CREATE PROCEDURE multiplicar(INOUT salida INT)
BEGIN
	/*Declaración de variables*/
    -- Variable que obtendrá el valor de cada celda de la columna
	DECLARE variableCursor INT;
    
    -- Variable que controlará cuando termina el LOOP dentro del cursor
    DECLARE done BOOLEAN DEFAULT FALSE;
    
    -- Declaración del cursor y de la condición de manejo, una vez no queden numeros que mostrar cambiará de TRUE a FALSE y saldremos del bucle
    DECLARE cursorMultiplos CURSOR FOR SELECT numeros FROM multiplos WHERE numeros IS NOT NULL;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
	-- Empieza el cursor
	OPEN cursorMultiplos;
    -- Bucle que recorrerá la columna
		recorrerColumna: LOOP
        -- Introducimos el dato de la celda que toque en la variable variableCursor
			FETCH cursorMultiplos INTO variableCursor;
		-- Condición para cerrar el bucle
				IF done THEN
					LEAVE recorrerColumna;
			END IF;
		-- Asignación de valor a la variable que queremos que nos devuelva.
			SET salida = salida * variableCursor;
		END LOOP recorrerColumna;
	CLOSE cursorMultiplos;
END//
DELIMITER ;


DROP PROCEDURE IF EXISTS minComMult;
-- Creación del procedimiento que calculará el mínimo común múltiplo de 2 números dados como parámetros y devolverá el MCM
DELIMITER //

CREATE PROCEDURE minComMult(IN den1 INT, INOUT den2 INT, OUT mcm INT)
BEGIN
    DECLARE dividir INT DEFAULT 2;
    DECLARE dividir2 INT DEFAULT 2;
    DECLARE division INT;
    DECLARE division2 INT;
    DECLARE final_result INT DEFAULT 1; -- Variable para almacenar el resultado final

    SET division = den1;
    SET division2 = den2;
	SELECT den1,den2 AS "Test";
    DROP TABLE IF EXISTS multiplos;
    CREATE TEMPORARY TABLE multiplos (numeros INT);

    multiplos_loop: LOOP
        IF division = 1 AND division2 = 1 THEN
            LEAVE multiplos_loop; -- Salir del bucle si division y division2 son ambos 1
        END IF;

        IF division != 1 THEN
            IF division % dividir = 0 THEN
                IF (SELECT COUNT(*) FROM multiplos WHERE numeros = dividir) = 0 THEN
                    INSERT INTO multiplos VALUES(dividir);
                END IF;
                SET division = division / dividir;
                SET dividir = 1; -- Reiniciar el divisor a 1 después de la división
            END IF;
        END IF;

        IF division2 != 1 THEN
            IF division2 % dividir2 = 0 THEN
                IF (SELECT COUNT(*) FROM multiplos WHERE numeros = dividir2) = 0 THEN
                    INSERT INTO multiplos VALUES(dividir2);
                END IF;
                SET division2 = division2 / dividir2;
                SET dividir2 = 1; -- Reiniciar el divisor a 1 después de la división
            END IF;
        END IF;

        SET dividir = dividir + 1;
        SET dividir2 = dividir2 + 1;
    END LOOP multiplos_loop;

	CALL multiplicar(final_result);
	-- Asignación de valor
    SET mcm = final_result;
	-- SELECT * FROM multiplos;
    DROP TEMPORARY TABLE IF EXISTS multiplos; -- Eliminar la tabla temporal
END//

DELIMITER ;



-- Creación del procedimiento para sumar fracciones, necesita las 2 parámetros (fracciones) con un formato x/x y una variable para devolver el resultado
DROP PROCEDURE IF EXISTS sumaFracciones;
DELIMITER //
CREATE PROCEDURE sumaFracciones(IN fac1 VARCHAR(10),IN fac2 VARCHAR(10), OUT resultado VARCHAR(10))
BEGIN
	-- Declaramos las variables locales que vamos a necesitar
    
	DECLARE numerador1 INT;
    DECLARE numerador2 INT;
    DECLARE denominador1 INT;
    DECLARE denominador2 INT;
    -- Resultado de la llamada a minComMult() y la suma resultante de la operación con esta.
    DECLARE mcm1 INT;
    DECLARE suma INT;
    -- Separamos los numeradores
    SET numerador1 = CAST(SUBSTR(fac1,1,(LOCATE("/",fac1))-1)AS SIGNED);
    SET numerador2 = CAST(SUBSTR(fac2,1,(LOCATE("/",fac2))-1)AS SIGNED);
    -- Separamos los denominadores
    SET denominador1 = CAST(SUBSTR(fac1,(LOCATE("/",fac1))+1,LENGTH(fac1))AS SIGNED);
	SET denominador2 = CAST(SUBSTR(fac2,(LOCATE("/",fac2))+1,LENGTH(fac1))AS SIGNED);
	
    -- Llamada a minComMult()
    CALL minComMult(denominador1,denominador2,mcm1);
    
    -- Asignamos los valores a los numeradores con el denominador común
    SET numerador1 = (numerador1*(mcm1/denominador1));
	SET numerador2 = (numerador2*(mcm1/denominador2));
    -- Se suman los numeradores
    SET suma = numerador1+numerador2;
     -- Se concatena la variable suma como char, una barra y la variable mcm1 como char para dar el resultado en un solo dato
    SET resultado = CONCAT(CAST(suma AS CHAR),"/",CAST(mcm1 AS CHAR));
    
END//
DELIMITER ;
-- Llamamos al procedimiento
SET @hola1 = "5/14";
SET @hola2 = "7/10";
SET @result = "";
CALL sumaFracciones(@hola1,@hola2,@result);
SELECT @result;
