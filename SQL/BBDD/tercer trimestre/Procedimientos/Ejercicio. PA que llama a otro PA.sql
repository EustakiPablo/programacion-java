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

-- Creación del procedimiento que calculará el mínimo común múltiplo
DROP PROCEDURE IF EXISTS minComMult;
DELIMITER //
CREATE PROCEDURE minComMult(IN den1 INT, INOUT den2 INT,OUT mcm INT)
BEGIN
	-- Declaracion y asignación de las variables.
    
    /*dividir y dividir2 son las variables que actuarán como divisor*/
	DECLARE dividir INT DEFAULT 2;
    DECLARE dividir2 INT DEFAULT 2;
    -- Esta variable guardará el resultado del procedimiento multiplicar()
    DECLARE final INT DEFAULT 1;
    
    -- division y division2 tomarán el valor de den1 y den2 respectivamente
    DECLARE division INT;
	DECLARE division2 INT;
    SET division = den1;
	SET division2 = den2;
    
    -- Creamos la tabla multiplos para guardar todos los multiplos de los 2 denominadores
	DROP TABLE IF EXISTS multiplos;
	CREATE TABLE multiplos(numeros INT);
    -- Bucle con condición de salida que division y division2 sean = 1
    WHILE (division!=1 AND division2!=1) DO 
    -- Si nuestra división tiene como resto 0 significa que es un multiplo y por tanto nos interesa guardarlo
		IF (division%dividir=0) THEN
        -- Solo queremos guardar los que no se encuentren ya en nuestra tabla
			IF ((SELECT COUNT(numeros) FROM multiplos WHERE numeros=dividir) = 0) THEN
				INSERT INTO multiplos VALUES(dividir);
                SET division = division/dividir;
                SET dividir = 1;
			END IF;
        END IF;
        -- repetimos para division2
        IF (division2%dividir2=0) THEN
			IF ((SELECT COUNT(numeros) FROM multiplos WHERE numeros=dividir2) = 0) THEN
				INSERT INTO multiplos VALUES(dividir2);
                SET division2 = division2/dividir2;
                SET dividir2 = 1;
			END IF;
        END IF;
		SET dividir = dividir+1;
        SET dividir2 = dividir2+1;
    END WHILE;
     SELECT * FROM multiplos;
    CALL multiplicar(final);
    SELECT final;
    SET mcm = final;
END//
DELIMITER ;
/*
SET @hola1 = 14;
SET @hola2 = 10;
CALL minComMult(@hola1,@hola2, @result);
SELECT @result;
*/




DROP PROCEDURE IF EXISTS sumaFracciones;
DELIMITER //
CREATE PROCEDURE sumaFracciones(IN fac1 VARCHAR(10),IN fac2 VARCHAR(10), OUT resultado VARCHAR(10))
BEGIN
	DECLARE numerador1 INT;
    DECLARE numerador2 INT;
    DECLARE denominador1 INT;
    DECLARE denominador2 INT;
    DECLARE mcm1 INT;
    SET numerador1 = CAST(SUBSTR(fac1,1,(LOCATE("/",fac1))-1)AS SIGNED);
    SET numerador2 = CAST(SUBSTR(fac2,1,(LOCATE("/",fac1))-1)AS SIGNED);
    SET denominador1 = CAST(SUBSTR(fac1,(LOCATE("/",fac1))+1,LENGTH(fac1))AS SIGNED);
	SET denominador2 = CAST(SUBSTR(fac1,(LOCATE("/",fac1))+1,LENGTH(fac1))AS SIGNED);
	
    CALL minComMult(denominador1,denominador2,mcm1);
    
    
    
    SET resultado = CONCAT(CAST(((numerador1*(denominador1/mcm1))+(numerador2*(denominador2/mcm1))) AS CHAR),"/",CAST(mcm1 AS CHAR));
    
END//
DELIMITER ;

SET @hola1 = "5/14";
SET @hola2 = "7/10";

CALL sumaFracciones(@hola1,@hola2,@result);
SELECT @result;
