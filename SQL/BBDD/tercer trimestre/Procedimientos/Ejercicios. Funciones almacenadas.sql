DROP DATABASE IF EXISTS dbfuncion1;
CREATE DATABASE dbfuncion1;
USE dbfuncion1;

DROP TABLE IF EXISTS sitios;
CREATE TABLE sitios(
	url varchar(100) PRIMARY KEY,
    cantpaginas int,
    estrellas tinyint
);

INSERT INTO sitios VALUES("https://google.com",1000000000,3);
INSERT INTO sitios VALUES("https://youtube.com",500000000,2);
INSERT INTO sitios VALUES("https://twitch.com",30000000,4);
INSERT INTO sitios VALUES("https://twitter.com",10000000,1);
INSERT INTO sitios VALUES("https://instagram.com",100000,3);

-- FUNCION 1
DROP FUNCTION IF EXISTS estrellas;
DELIMITER //
-- DEVUELVE LAS ESTRELLAS COMO *
-- INDICO QUE VAMOS A LEER DATOS SQL EN LA FUNCIÓN (VAMOS A USAR UN SELECT)
CREATE FUNCTION estrellas(web VARCHAR(100)) RETURNS VARCHAR(5) READS SQL DATA
BEGIN 
-- DECLARAMOS LAS VARIABLES QUE ALMACENARÁN LA CANTIDAD DE ESTRELLAS, EL CONTADOR Y LA CADENA QUE VAMOS A DEVOLVER
	DECLARE cantidad DOUBLE DEFAULT 0;
    DECLARE contador DOUBLE DEFAULT 0;
    DECLARE estrellass VARCHAR(5) DEFAULT "";
    -- RECUPERAMOS EL VALOR DE LAS ESTRELLAS DE LA TABLA SITIOS Y LO CASTEAMOS PARA TRABAJAR CON EL
    SET cantidad = CAST((SELECT estrellas FROM sitios WHERE url = web) AS DOUBLE);
    -- BUCLE CON EL QUE RELLENAMOS CON * LA VARIABLE LOCAL ESTELLASS
    WHILE (contador<cantidad) DO
		SET estrellass = CONCAT(estrellass,"*");
        SET contador = contador+1;
    END WHILE;
    -- DEVOLVEMOS VARCHAR
    RETURN estrellass;
END //
DELIMITER ;

SELECT estrellas("https://google.com");
SELECT estrellas("https://youtube.com");
SELECT estrellas("https://twitch.com");
SELECT estrellas("https://twitter.com");
SELECT estrellas("https://instagram.com");


-- SELECT estrellas FROM sitios WHERE url ="https://google.com";

-- Función 2

DROP FUNCTION IF EXISTS cantVisitias;
DELIMITER //
CREATE FUNCTION cantVisitias(num INT) RETURNS VARCHAR(20) DETERMINISTIC
BEGIN 
	DECLARE trafico VARCHAR(20);
	IF (num < 20000000) THEN
		SET trafico = "tráfico bajo";
	ELSEIF (num < 40000000) THEN
		SET trafico = "tráfico medio";
	ELSE
		SET trafico = "tráfico alto";
    END IF;
    RETURN trafico;
END //
DELIMITER ;

SELECT cantVisitias(30000000);

-- Función 3

DROP FUNCTION IF EXISTS mayorTrafico;
DELIMITER //
CREATE FUNCTION mayorTrafico() RETURNS VARCHAR(20) READS SQL DATA
BEGIN 
	-- sitios
    DECLARE devolver VARCHAR(100);
    SET devolver = (SELECT url FROM sitios WHERE cantpaginas = (SELECT MAX(cantpaginas) FROM sitios));
    RETURN devolver;
END //
DELIMITER ;

SELECT mayorTrafico();