USE paentradasalida;

#sumar 4 numeros
DROP PROCEDURE IF EXISTS pa_sumar;
DELIMITER //
CREATE PROCEDURE pa_sumar(IN v1 INT,IN v2 INT,IN v3 INT, IN v4 INT)
BEGIN
    DECLARE total INT;
    SET total = v1+v2+v3+v4;
    SELECT total;
END //
DELIMITER ;

CALL pa_sumar(5,6,7,9);