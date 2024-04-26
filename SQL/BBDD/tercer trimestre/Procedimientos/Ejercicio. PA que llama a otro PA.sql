use empresa3;
DROP PROCEDURE IF EXISTS minComMult;

DELIMITER //
CREATE PROCEDURE minComMult(INOUT den1 INT, INOUT den2 INT)
BEGIN
	DECLARE dividir INT DEFAULT 2;
    DECLARE dividir2 INT DEFAULT 2;
    DECLARE final INT DEFAULT 1;
    DECLARE ultimoBucle INT DEFAULT 1;
    DECLARE contador INT DEFAULT 0;
    DECLARE division INT;
	DECLARE division2 INT;
    SET division = den1;
	SET division2 = den2;
	DROP TABLE IF EXISTS multiplos;
	CREATE TABLE multiplos(numeros INT);
    WHILE (division!=1 AND division2!=1) DO 
		IF (division%dividir=0) THEN
			IF ((SELECT COUNT(numeros) FROM multiplos WHERE numeros=dividir) = 0) THEN
				INSERT INTO multiplos VALUES(dividir);
                SET division = division/dividir;
                SET dividir = 1;
			END IF;
        END IF;
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
      SET ultimoBucle = (SELECT COUNT(numeros) FROM multiplos);
	WHILE (ultimoBucle > contador) DO
		SET final = (final)*(SELECT numeros FROM multiplos LIMIT 1);
        DELETE FROM multiplos WHERE numeros = (SELECT numeros FROM multiplos LIMIT 1);
        SET contador = contador+1;
	END WHILE;
    SELECT final;
    -- contador
    -- SELECT * FROM multiplos;
END//
DELIMITER ;
SET @hola1 = 14;
SET @hola2 = 10;
CALL minComMult(@hola1,@hola2);


DROP PROCEDURE IF EXISTS sumaFracciones;

DELIMITER //
CREATE PROCEDURE sumaFracciones()
BEGIN
	
END//
DELIMITER ;
