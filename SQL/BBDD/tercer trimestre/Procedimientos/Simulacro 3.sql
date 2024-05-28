DROP DATABASE IF EXISTS examen3;
CREATE DATABASE examen3;
USE examen3;

-- Ejercicio 1
DROP PROCEDURE IF EXISTS cubo;
DELIMITER //
CREATE PROCEDURE cubo(IN num FLOAT, OUT resultado FLOAT)
BEGIN
    -- DECLARE resultado FLOAT;
    SET resultado = POWER(num,3);
END //
DELIMITER ;
SET @a = 0;
CALL cubo(3,@a);
SELECT @a;

-- Ejercicio 2

DROP TABLE IF EXISTS proveedores;
CREATE TABLE proveedores(
	id_proveedor TINYINT AUTO_INCREMENT PRIMARY KEY,
	cif VARCHAR(10),
    nombre VARCHAR(10),
    direccion VARCHAR(30)
);

DROP PROCEDURE IF EXISTS ingresarProveedor;
DELIMITER //
CREATE PROCEDURE ingresarProveedor(IN ciff VARCHAR(10),IN nombree VARCHAR(10),IN direccionn VARCHAR(30))
BEGIN
    INSERT INTO proveedores(cif,nombre,direccion) VALUES (ciff,nombree,direccionn);
END //
DELIMITER ;
CALL ingresarProveedor("ABC588","Cristian","C/ claro que si crack");

-- Ejercicio 3
DROP TABLE IF EXISTS personal;
CREATE TABLE personal(
	id tinyint AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(9),
    nombre VARCHAR(10),
    apellido1 VARCHAR(10),
    apellido2 VARCHAR(10),
    telefono VARCHAR(12),
    correo VARCHAR(30)
);
INSERT INTO personal(dni,nombre,apellido1,apellido2,telefono,correo) VALUES("126835A","Cristian1","Falcon1","Garcia1","58768368","c@c.com");
INSERT INTO personal(dni,nombre,apellido1,apellido2,telefono,correo) VALUES("BSDGH8","Cristian2","Falcon2","Garcia2","58768368","c@c.com");
INSERT INTO personal(dni,nombre,apellido1,apellido2,telefono,correo) VALUES("126835A","Cristian3","Falcon3","Garcia3","58768368","c@c.com");
INSERT INTO personal(dni,nombre,apellido1,apellido2,telefono,correo) VALUES("126835A","Cristian4","Falcon4","Garcia4","58768368","c@c.com");
INSERT INTO personal(dni,nombre,apellido1,apellido2,telefono,correo) VALUES("126835A","Cristian5","Falcon5","Garcia5","58768368","c@c.com");

DROP PROCEDURE IF EXISTS verPersonal;
DELIMITER //
CREATE PROCEDURE verPersonal()
BEGIN
    SELECT * FROM personal;
END //
DELIMITER ;
CALL verPersonal();

-- Ejercicio 4

DROP TABLE IF EXISTS productos;
CREATE TABLE productos(
	id tinyint auto_increment PRIMARY KEY,
    nombre VARCHAR(20),
    precio float
);
INSERT INTO productos(nombre,precio) VALUES ("Galletas",1.20);
INSERT INTO productos(nombre,precio) VALUES ("Napolitana",2.50);
INSERT INTO productos(nombre,precio) VALUES ("Galletas2",0.90);
INSERT INTO productos(nombre,precio) VALUES ("Galletas3",1.15);
INSERT INTO productos(nombre,precio) VALUES ("Galletas4",5.20);

DROP PROCEDURE IF EXISTS mostrarMenosDe150;
DELIMITER //
CREATE PROCEDURE mostrarMenosDe150()
BEGIN
    SELECT * FROM productos WHERE precio < 1.50;
END //
DELIMITER ;

CALL mostrarMenosDe150();

-- Ejercicio 5
DROP PROCEDURE IF EXISTS mostrarMasDe150;
DELIMITER //
CREATE PROCEDURE mostrarMasDe150()
BEGIN
    SELECT * FROM productos WHERE precio > 1.50;
END //
DELIMITER ;

CALL mostrarMasDe150();

-- Ejercicio 6
ALTER TABLE productos ADD COLUMN calidad TINYINT;
DROP PROCEDURE IF EXISTS puntuacionAleatoria;
DELIMITER //
CREATE PROCEDURE puntuacionAleatoria()
BEGIN
	DECLARE num TINYINT DEFAULT 1;
    WHILE num <= (SELECT COUNT(*) FROM productos) DO
		UPDATE productos SET calidad = ((RAND() * (5 - 1)) + 1) WHERE id = num;
        SET num = num+1;
    END WHILE;
END //
DELIMITER ;

CALL puntuacionAleatoria();

DROP PROCEDURE IF EXISTS estrellas;
DELIMITER //
CREATE PROCEDURE estrellas()
BEGIN
	DECLARE num TINYINT DEFAULT 1;
    DECLARE contador INT DEFAULT 1;
    DECLARE estrellasTotales VARCHAR(5);
    DECLARE estrellasNum TINYINT;
    DROP TABLE IF EXISTS estrellas;
    CREATE TABLE estrellas(
		id_producto TINYINT PRIMARY KEY,
        estrellaCadena VARCHAR(5),
		FOREIGN KEY (id_producto) REFERENCES productos(id)
    );
    WHILE num <= (SELECT COUNT(*) FROM productos) DO
		SET estrellasNum = (SELECT calidad FROM productos WHERE id = num);
        SET contador = 1;
        SET estrellasTotales = "";
        WHILE contador <= estrellasNum DO
			SET estrellasTotales = CONCAT(estrellasTotales,"*");
            SET contador = contador+1;
        END WHILE;
        INSERT INTO estrellas VALUES (num,estrellasTotales);
        SET num = num+1;
    END WHILE;
    SELECT * FROM estrellas;
    DROP TABLE estrellas;
END //
DELIMITER ;
CALL estrellas();

-- Ejercicio 7


-- Ejercicio 8
DROP PROCEDURE IF EXISTS burbujaAgain;
DELIMITER //
CREATE PROCEDURE burbujaAgain(IN num1 INT, IN num2 INT,IN num3 INT,IN num4 INT)
BEGIN
	DECLARE numero1 INT;
    DECLARE numero2 INT;
    DECLARE contadorFinal INT DEFAULT 1;
    DECLARE contador INT DEFAULT 1;
    DROP TEMPORARY TABLE IF EXISTS numeros;
    CREATE TEMPORARY TABLE numeros(
		id TINYINT AUTO_INCREMENT PRIMARY KEY,
        numero INT
    );
    INSERT INTO numeros(numero) VALUES(num1);
    INSERT INTO numeros(numero) VALUES(num2);
    INSERT INTO numeros(numero) VALUES(num3);
    INSERT INTO numeros(numero) VALUES(num4);
    
     WHILE contadorFinal <= 3 DO
		SET numero1 = (SELECT numero FROM numeros WHERE id=contador);
		SET numero2 = (SELECT numero FROM numeros WHERE id=contador+1);
        IF numero1>numero2 THEN
        SELECT "HOLA";
			-- En caso de ser cierto cambiamos de lugar ambos valores
			UPDATE numeros SET numero = numero1 WHERE id = contador+1;
            UPDATE numeros SET numero = numero2 WHERE id = contador;
            SET contadorFinal = 1;
		ELSE
			SET contadorFinal = contadorFinal+1;
		END IF;
        IF contador = 3 THEN
			SET contador = 0;
		END IF;
        SET contador = contador+1;
     END WHILE;
     SELECT * FROM numeros;
END //
DELIMITER ;
CALL burbujaAgain(5,5,2,4);