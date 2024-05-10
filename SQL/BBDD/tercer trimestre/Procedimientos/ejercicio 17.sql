DROP DATABASE IF EXISTS examen1;
CREATE DATABASE IF NOT EXISTS examen1;
USE examen1;

-- Ejercicio 17
DROP FUNCTION IF EXISTS valorProducto;
DELIMITER //
CREATE FUNCTION valorProducto(coste FLOAT,porcentaje INT) RETURNS FLOAT DETERMINISTIC
BEGIN
	-- Variable local que almacena el porcentaje convertido
	DECLARE porcent FLOAT DEFAULT porcentaje/100;
    -- Variable local que almacenará el resultado final
    DECLARE precioFinal FLOAT DEFAULT 0;
    -- Asignación del coste con el porcentaje indicado
    SET precioFinal = (coste*porcent)+coste;
    -- Devolvemos el valor
    RETURN precioFinal;
END //
DELIMITER ;
-- Creamos la variable global a y le asignamos el valor que retorna la función.
SET @a = valorProducto(2000,15);
-- mostramos el valor
SELECT @a;
