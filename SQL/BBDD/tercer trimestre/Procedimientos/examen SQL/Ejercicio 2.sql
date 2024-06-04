DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;


DROP PROCEDURE IF EXISTS generarNumeros;
DELIMITER //
-- Procedimiento que generará 4 números aleatorios entre 1 y 10 y los almacena
-- En una tabla temporal llamada números
CREATE PROCEDURE generarNumeros()
BEGIN
	-- Contador para realizar el bucle
    DECLARE contador INT DEFAULT 0;
    DROP TABLE IF EXISTS numeros;
    /* Hacemos que tenga un AUTO_INCREMENT para que cuando vayamos a ordenar
		los valores podamos localizar las posiciones. En este caso
		se ordenará dejando arriba los menores y debajo los mayores*/
    CREATE TEMPORARY TABLE numeros(
		lugar tinyint AUTO_INCREMENT PRIMARY KEY,
        num INT
    );
    -- Bucle que se repetirá 4 veces
    WHILE (contador<4) DO
		-- Insertamos en la tabla el valor aleatorio entre 1 y 10
		INSERT INTO numeros(num) VALUES ((RAND() * (10 - 1)) + 1);
        SET contador = contador+1;
    END WHILE;
    SELECT * FROM numeros;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS ordenarNumeros;
DELIMITER //
CREATE PROCEDURE ordenarNumeros()
BEGIN
-- Declaramos las variables donde guardaremos los valores que compararemos
	DECLARE numero1 INT;
    DECLARE numero2 INT;
    -- Controlaremos que realmente los números están ordendos
    DECLARE contadorFinal INT DEFAULT 1;
    /*Contador queusaremos para 
    localizar el lugar dentro de la tabla de cada valor*/
    DECLARE contador INT DEFAULT 1;
    -- Llamamos al procedimiento que generará los números aleatorios
    CALL generarNumeros();
    /*Iteraremos tantas veces como sea necesario pero solo tenemos
    que comprobar 3 veces para saber si está ordenado puesto que
    son 4 números*/
    WHILE contadorFinal <=3 DO
    -- Recogemos los números
		SET numero1 = (SELECT num FROM numeros WHERE lugar=contador);
		SET numero2 = (SELECT num FROM numeros WHERE lugar=contador+1);
        -- Comparamos si el primero es mayor que es segundo
		IF numero1>numero2 THEN
			-- En caso de ser cierto cambiamos de lugar ambos valores
			UPDATE numeros SET num = numero1 WHERE lugar = contador+1;
            UPDATE numeros SET num = numero2 WHERE lugar = contador;
            /*Como los números aún no están ordenados reiniciamos la variable
            contadorFinal para que así el programa vuelva a comprobar la tabla
            entera*/
            SET contadorFinal = 1;
		ELSE
			/*En caso de no cumplirse la condición le sumaremos 1 a nuestra variable*/
			SET contadorFinal = contadorFinal+1;
		END IF;
        -- En caso de que nuestro contador sea 3 lo reiniciamos
        IF contador = 3 THEN
			SET contador = 0;
		END IF;
        -- Aumentamos el contador y volvemos a iterar
        SET contador = contador+1;
    END WHILE;
    -- Mostramos los resultados
    SELECT * FROM numeros;
    DROP TEMPORARY TABLE numeros;
END //
DELIMITER ;
CALL ordenarNumeros();