DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

DROP PROCEDURE IF EXISTS operacionMysql;
DELIMITER //
CREATE PROCEDURE operacionMysql()
	BEGIN
		-- Variable donde guardaremos la operación
		DECLARE operacion FLOAT;
        -- Usamos función SQRT para la raíz cuadrada y POW para potencias
        SET operacion = (SQRT(7+POW(2,4)-7.116));
        SELECT operacion;
	END //
DELIMITER ;
CALL operacionMysql();