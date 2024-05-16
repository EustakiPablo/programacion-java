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

drop function if exists f_mayor;

delimiter //
create function f_mayor(
  valor1 int,
  valor2 int) 
  returns VARCHAR(10)
  deterministic
begin 
  if valor1>valor2 then
    return CAST(valor1 AS char(10));
  elseif valor2>valor1 then
    return CAST(valor2 AS char(10));
  else
	return CONCAT(CAST(valor1 AS char(10)),",",CAST(valor2 AS char(10)));
  end if;
end //
delimiter ;

select f_mayor(50, 50);
