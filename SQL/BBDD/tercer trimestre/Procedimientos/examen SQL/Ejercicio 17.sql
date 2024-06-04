DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

-- Tabla donde guardaremos los antiguos empleados
DROP TABLE IF EXISTS antiguo_empleado;
CREATE TABLE antiguo_empleado(
	nombre VARCHAR(10),
    telefono VARCHAR(9)
);

DROP TRIGGER IF EXISTS onDeleteEmpleados;
DELIMITER //-- Antes de borrar el empleado lo guardamos en la tabla antiguo_empleado
CREATE TRIGGER onDeleteEmpleados BEFORE DELETE ON empleados FOR EACH ROW
	BEGIN
		INSERT INTO antiguo_empleado VALUES (old.nombre,old.telefono);
	END //
DELIMITER ;
-- Lo probamos
DELETE FROM empleados WHERE nombre = "Cristian";

SELECT * FROM antiguo_empleado;