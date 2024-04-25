use empresa3;
DROP PROCEDURE IF EXISTS minComMult;
/*SET division = den1/dividir;
        SET division2 = den2/dividir;
        IF ((SELECT COUNT(numeros) FROM multiplos WHERE numeros=division) = 0) THEN
			INSERT INTO multiplos VALUES(division);
        END IF;
        IF ((SELECT COUNT(numeros) FROM multiplos WHERE numeros=division2) = 0) THEN
			INSERT INTO multiplos VALUES(division2);
        END IF;
        SET dividir = dividir+1;*/
    
    
    /*WHILE (dividir != den1 AND dividir != den2) DO
    SET si = den1 % dividir;
		IF (si != 0) THEN
			IF ((SELECT numeros FROM multiplos WHERE numeros=si) = null) THEN
				INSERT INTO multiplos VALUES(si);
            END IF;
        END IF;
        SET dividir = dividir+1;
    END WHILE;
    DECLARE dividir INT DEFAULT 2;
    DECLARE dividir2 INT DEFAULT 2;
    DECLARE division INT;
	DECLARE division2 INT;
    SET division = den1;
	SET division2 = den2;
	DROP TABLE IF EXISTS multiplos;
	CREATE TABLE multiplos(numeros INT);
    WHILE (division != 1) DO #OR division2 != 1
		IF (division%dividir!=0) THEN
			IF ((SELECT COUNT(numeros) FROM multiplos WHERE numeros=dividir) = 0) THEN
				INSERT INTO multiplos VALUES(dividir);
                SET division = division%dividir;
                SET dividir = 2;
			END IF;
        END IF;
		SET dividir = dividir+1;
		SET dividir2 = dividir2+1;
    END WHILE;
    SELECT * FROM multiplos;
    */
DELIMITER //
CREATE PROCEDURE minComMult(INOUT den1 INT, INOUT den2 INT)
BEGIN
	DECLARE dividir INT DEFAULT 2;
    DECLARE dividir2 INT DEFAULT 2;
    DECLARE division INT;
	DECLARE division2 INT;
    SET division = den1;
	SET division2 = den2;
	DROP TABLE IF EXISTS multiplos;
	CREATE TABLE multiplos(numeros INT);
    WHILE (division!=1) DO 
		IF (division%dividir=0) THEN
			IF ((SELECT COUNT(numeros) FROM multiplos WHERE numeros=dividir) = 0) THEN
				INSERT INTO multiplos VALUES(dividir);
                SET division = division/dividir;
                SET dividir = 1;
			END IF;
        END IF;
		SET dividir = dividir+1;
    END WHILE;
    /*SELECT * FROM multiplos;
    SELECT division2,dividir2;*/
    WHILE (division2!=1) DO 
		IF (division2%dividir2=0) THEN
			IF ((SELECT COUNT(numeros) FROM multiplos WHERE numeros=dividir2) = 0) THEN
				INSERT INTO multiplos VALUES(dividir2);
                SET division2 = division2/dividir2;
                SET dividir2 = 1;
			END IF;
        END IF;
		SET dividir2 = dividir2+1;
    END WHILE;
    
    
    
    SELECT * FROM multiplos;
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
