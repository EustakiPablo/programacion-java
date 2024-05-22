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

-- Ejercicio 7 No terminado
DROP PROCEDURE IF EXISTS calcularGanancia;
DELIMITER //
CREATE PROCEDURE calcularGanancia()
BEGIN
	SELECT nombre FROM productos;
END //
DELIMITER ;
CALL calcularGanancia();

-- Ejercicio 8
DROP PROCEDURE IF EXISTS generarNumeros;
DELIMITER //
-- Procedimiento que generará 4 números aleatorios entre 1 y 10 y los almacena
-- En una tabla temporal llamada números
CREATE PROCEDURE generarNumeros()
BEGIN
	-- Contador para realizar el bucle
    DECLARE contador INT DEFAULT 0;
    DROP TABLE IF EXISTS numeros;
    /* Hacemos que tenga un AUTO_INCREMENT para que cuando vayamos a ordenar
		los valores podamos localizar las posiciones. En este caso
		se ordenará dejando arriba los menores y debajo los mayores*/
    CREATE TEMPORARY TABLE numeros(
		lugar tinyint AUTO_INCREMENT PRIMARY KEY,
        num INT
    );
    -- Bucle que se repetirá 4 veces
    WHILE (contador<4) DO
		-- Insertamos en la tabla el valor aleatorio entre 1 y 10
		INSERT INTO numeros(num) VALUES ((RAND() * (10 - 1)) + 1);
        SET contador = contador+1;
    END WHILE;
    SELECT * FROM numeros;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS ordenarNumeros;
DELIMITER //
CREATE PROCEDURE ordenarNumeros()
BEGIN
-- Declaramos las variables donde guardaremos los valores que compararemos
	DECLARE numero1 INT;
    DECLARE numero2 INT;
    -- Controlaremos que realmente los números están ordendos
    DECLARE contadorFinal INT DEFAULT 1;
    /*Contador queusaremos para 
    localizar el lugar dentro de la tabla de cada valor*/
    DECLARE contador INT DEFAULT 1;
    -- Llamamos al procedimiento que generará los números aleatorios
    CALL generarNumeros();
    /*Iteraremos tantas veces como sea necesario pero solo tenemos
    que comprobar 3 veces para saber si está ordenado puesto que
    son 4 números*/
    WHILE contadorFinal <=3 DO
    -- Recogemos los números
		SET numero1 = (SELECT num FROM numeros WHERE lugar=contador);
		SET numero2 = (SELECT num FROM numeros WHERE lugar=contador+1);
        -- Comparamos si el primero es mayor que es segundo
		IF numero1>numero2 THEN
			-- En caso de ser cierto cambiamos de lugar ambos valores
			UPDATE numeros SET num = numero1 WHERE lugar = contador+1;
            UPDATE numeros SET num = numero2 WHERE lugar = contador;
            /*Como los números aún no están ordenados reiniciamos la variable
            contadorFinal para que así el programa vuelva a comprobar la tabla
            entera*/
            SET contadorFinal = 1;
		ELSE
			/*En caso de no cumplirse la condición le sumaremos 1 a nuestra variable*/
			SET contadorFinal = contadorFinal+1;
		END IF;
        -- En caso de que nuestro contador sea 3 lo reiniciamos
        IF contador = 3 THEN
			SET contador = 0;
		END IF;
        -- Aumentamos el contador y volvemos a iterar
        SET contador = contador+1;
    END WHILE;
    -- Mostramos los resultados
    SELECT * FROM numeros;
    DROP TEMPORARY TABLE numeros;
END //
DELIMITER ;
CALL ordenarNumeros();