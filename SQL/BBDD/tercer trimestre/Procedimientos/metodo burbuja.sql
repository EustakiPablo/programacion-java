USE empresaentradasalida;




#Procedimiento
DROP PROCEDURE IF EXISTS burbuja;
DELIMITER //
CREATE PROCEDURE burbuja(IN valor1 INT, IN valor2 INT, IN valor3 INT)
BEGIN
	IF valor1>valor2 AND valor1 > valor3 THEN
		IF valor2 > valor3 THEN
			SELECT valor1,valor2,valor3;
		ELSE
			SELECT valor1,valor3,valor2;
		END IF;
	ELSEIF valor2>valor1 AND valor2>valor3 THEN
		IF valor1 > valor3 THEN
			SELECT valor2,valor1,valor3;
		ELSE
			SELECT valor2,valor3,valor1;
		END IF;
	ELSE
		IF valor2 > valor1 THEN
			SELECT valor3,valor2,valor1;
		ELSE
			SELECT valor3,valor1,valor2;
		END IF;
    END IF;
END //
DELIMITER ;

CALL burbuja(7,8,2);



