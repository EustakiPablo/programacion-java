USE tienda;
DROP PROCEDURE IF EXISTS swtichCase;
DELIMITER //
CREATE PROCEDURE swtichCase(IN expresion INT, OUT salida VARCHAR(30))
BEGIN
	CASE expresion
			WHEN 1 THEN
				SET salida = "HOLA";
			WHEN 2 THEN
				SET salida = "ADIOS";
			ELSE
				SET salida = "TE CAGAS";
		END CASE;
        SELECT salida;
END //
DELIMITER ;

CALL swtichCase(1,@resultado);

DROP PROCEDURE IF EXISTS ifCondicion;
DELIMITER //
CREATE PROCEDURE ifCondicion(IN expresion DOUBLE, OUT salida VARCHAR(30))
BEGIN
	DECLARE salgo VARCHAR(100) DEFAULT "";
    DECLARE trabajo INT DEFAULT 0;
	/*SELECT redondear(expresion, salgo);
    SET trabajo = CAST(salgo AS DOUBLE);*/
    IF LOCATE('.',CAST(expresion AS CHAR))!=0 THEN
		SET trabajo = CAST(redondear(expresion) AS DOUBLE);
	ELSE
		SET trabajo = expresion;
    END IF;
    
	IF trabajo<=4 THEN
		SET salida = "Insuficiente";
	ELSEIF trabajo<=5 THEN
		SET salida = "Aprobado";
	ELSEIF trabajo<=6 THEN
		SET salida = "Bien";
	ELSEIF trabajo<=8 THEN
		SET salida = "Notable";
	ELSEIF trabajo<10 THEN
		SET salida = "Sobresaliente";
	ELSE
		SET salida = "Matrícula de honor";
	END IF;
END //
DELIMITER ;
CALL ifCondicion(9.6,@resultado);
SELECT @resultado;


DROP FUNCTION IF EXISTS redondear;
DELIMITER //
CREATE FUNCTION redondear(expresion DOUBLE) RETURNS TEXT DETERMINISTIC
BEGIN
	DECLARE salida VARCHAR(100) DEFAULT "";
    #IF LOCATE('.',CAST(expresion AS CHAR(4))))+1)
    
    DECLARE ejemplo VARCHAR(100) DEFAULT SUBSTR(CAST(expresion AS CHAR(4)),(LOCATE('.',CAST(expresion AS CHAR(4))))+1);
	IF CAST(ejemplo AS DOUBLE) >= 5 THEN
		SET salida = CAST(expresion+1 AS CHAR);
	ELSE
		RETURN expresion;
    END IF;
    #RETURN salida;
    RETURN ejemplo;
END //
DELIMITER ;
/*CALL redondear(5.5,@final);
SELECT @final;*/




#BUCLES

DROP PROCEDURE IF EXISTS bucleRepeat;
DELIMITER //
CREATE PROCEDURE bucleRepeat(in n INT,OUT salida1 CHAR(100))
BEGIN
	/*SET i = 0;
    SET s = "";*/
    DECLARE i INT DEFAULT 0;
    DECLARE s VARCHAR(30) DEFAULT '';
    bucle1: REPEAT
		SET i = i+1;
        SET s = CONCAT(s,"HOLA ");
        UNTIL i >= n
	END REPEAT bucle1;
    SET salida1 = s;
END //
DELIMITER ;
CALL bucleRepeat(2,@salgo);
SELECT @salgo;


DROP PROCEDURE IF EXISTS bucleWhile;
DELIMITER //
CREATE PROCEDURE bucleWhile(IN expresion INT, OUT salida2 CHAR(100))
BEGIN
    DECLARE contador INT DEFAULT 0;
    DECLARE resultado VARCHAR(30) DEFAULT '';
    WHILE contador < expresion DO
		SET resultado = CONCAT(resultado, "HOLA ");
        SET contador = contador + 1;
    END WHILE;
    SET salida2 = resultado;
END //
DELIMITER ;
CALL bucleWhile(5,@resultado);
SELECT @resultado;