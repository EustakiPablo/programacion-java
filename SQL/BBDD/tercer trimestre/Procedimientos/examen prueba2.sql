DROP DATABASE IF EXISTS examen2;
CREATE DATABASE examen2;
USE examen2;

-- Ejercicio 1
DROP PROCEDURE IF EXISTS fibonacci;
DELIMITER //
CREATE PROCEDURE fibonacci(IN cuantas INT)
BEGIN
	-- Declaración de variables
    -- num y num2 son los números con los que operaremos
	DECLARE num INT DEFAULT 0;
    DECLARE num2 INT DEFAULT 1;
    -- La cadena en la que guardaremos la sucesión separada por comas
    DECLARE fibo VARCHAR(255) DEFAULT "";
    -- Contador para el bucle
    DECLARE contador INT DEFAULT 0;
    -- Buleano para comprobar si estamos en el primer número de la sucesión
    DECLARE primera BOOLEAN DEFAULT TRUE;
    -- Memoria para guardar la variable num para realizar el cambio de valores
    DECLARE memo INT;
    -- Bucle donde crearemos la sucesión
    WHILE(contador<cuantas) DO
    -- En caso de ser el primer valor solo añadiremos el 0
        IF (primera) THEN
			SET fibo = CONCAT(fibo,"0, ");
            SET primera = FALSE;
		ELSE
        -- En cualquier otro caso añadimos num2, hacemos que sea igual a la operación y cambiamos el valor de num al mismo que tenía num2
			SET fibo = CONCAT(fibo,CAST((num2) AS CHAR(255)),", ");
			SET memo = num;
			SET num = num2;
			SET num2 = memo+num2;
        END IF;
        SET contador = contador+1;
    END WHILE;
    -- Retiramos la cadena ", " del final para que quede bien
    SET fibo = SUBSTR(fibo,1,LENGTH(fibo)-2);
    -- Mostramos la sucesión
    SELECT fibo;
END //
DELIMITER ;
CALL fibonacci(10);

-- Ejercicio 2
DROP TABLE IF EXISTS proveedores;
CREATE TABLE proveedores(
	id tinyint PRIMARY KEY,
    cif VARCHAR(20),
    nombre VARCHAR(20)
);
DROP PROCEDURE IF EXISTS insertProveedores;
DELIMITER //
CREATE PROCEDURE insertProveedores(IN ids tinyint, IN ciff VARCHAR(20), IN nombre VARCHAR(20))
BEGIN
	INSERT INTO proveedores VALUES (ids, ciff, nombre);
END //
DELIMITER ;
CALL insertProveedores(4,"A12355","San Damian4");
CALL insertProveedores(1,"A12355","San Damian1");
CALL insertProveedores(2,"A12355","San Damian2");
CALL insertProveedores(3,"A12355","San Damian3");
CALL insertProveedores(5,"A12355","San Damian5");

-- Ejercicio 3
DROP PROCEDURE IF EXISTS selectProveedores;
DELIMITER //
CREATE PROCEDURE selectProveedores()
BEGIN
	SELECT * FROM proveedores;
END //
DELIMITER ;
CALL selectProveedores();

-- Ejercicio 4
DROP TABLE IF EXISTS productos;
CREATE TABLE productos(
	id tinyint PRIMARY KEY,
    nombre VARCHAR(20),
    descripcion VARCHAR(100),
    proveedor tinyint,
    FOREIGN KEY (proveedor) REFERENCES proveedores (id)
);
INSERT INTO productos VALUES (1,"Teclado","Teclado de los buenos",1);
INSERT INTO productos VALUES (2,"Monitor","a",1);
INSERT INTO productos VALUES (3,"Microfono","b",2);
INSERT INTO productos VALUES (4,"Otro teclado","c",2);
INSERT INTO productos VALUES (5,"Otro monitor","d",3);

DROP PROCEDURE IF EXISTS selectProductos;
DELIMITER //
CREATE PROCEDURE selectProductos()
BEGIN
	SELECT * FROM productos;
END //
DELIMITER ;
CALL selectProductos();

-- Ejercicio 5
DROP PROCEDURE IF EXISTS selectProductosPorProveedor;
DELIMITER //
CREATE PROCEDURE selectProductosPorProveedor()
BEGIN
	SELECT proveedores.nombre,COUNT(productos.id) FROM productos, proveedores WHERE productos.proveedor = proveedores.id GROUP BY proveedores.id;
END //
DELIMITER ;
CALL selectProductosPorProveedor();

-- Ejercicio 6
ALTER TABLE productos ADD COLUMN peso FLOAT;
UPDATE productos SET peso = 1.0 WHERE id = 1;
UPDATE productos SET peso = 1.8 WHERE id = 2;
UPDATE productos SET peso = 2.0 WHERE id = 3;
UPDATE productos SET peso = 4.0 WHERE id = 4;
UPDATE productos SET peso = 6.0 WHERE id = 5;
ALTER TABLE productos ADD COLUMN precio FLOAT;
UPDATE productos SET precio = 5.0 WHERE id = 1;
UPDATE productos SET precio = 11.8 WHERE id = 2;
UPDATE productos SET precio = 20.0 WHERE id = 3;
UPDATE productos SET precio = 15.0 WHERE id = 4;
UPDATE productos SET precio = 70.0 WHERE id = 5;

DROP PROCEDURE IF EXISTS peso;
DELIMITER //
CREATE PROCEDURE peso(IN ids tinyint)
BEGIN
	DECLARE pesoComp FLOAT;
    SET pesoComp = (SELECT peso FROM productos WHERE id = ids);
	IF pesoComp < 1.5 THEN
		SELECT "Liviano";
	ELSEIF pesoComp < 5 THEN
		SELECT "Medio";
    ELSE
		SELECT "Pesado";
	END IF;
END //
DELIMITER ;
CALL peso(3);

-- Ejercicio 7
DROP PROCEDURE IF EXISTS calcularGanancia;
DELIMITER //
CREATE PROCEDURE calcularGanancia()
BEGIN
	SELECT nombre FROM productos;
END //
DELIMITER ;
CALL calcularGanancia();