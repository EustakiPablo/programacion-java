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


-- Ejercicio 9

DROP PROCEDURE IF EXISTS sumaImpares;
DELIMITER //
CREATE PROCEDURE sumaImpares(IN num1 INT, IN num2 INT)
BEGIN
	DECLARE numero1 INT;
    DECLARE numero2 INT;
    DECLARE resultado INT DEFAULT 0;
	IF (num1<num2) THEN
		SET numero1 = num2;
        SET numero2 = num1;
	ELSE
		SET numero1 = num1;
        SET numero2 = num2;
    END IF;
    
    WHILE numero1<numero2 DO
		IF !(numero1%2=0 AND numero2%2=0) THEN
			SET resultado = resultado+numero1+numero2;
        END IF;
    END WHILE;
    SELECT resultado;
END //
DELIMITER ;

CALL sumaImpares(10, 11);

-- Ejercicio 11
DROP PROCEDURE IF EXISTS primos;
DELIMITER //
CREATE PROCEDURE primos(IN num INT, OUT primos LONGTEXT)
BEGIN
	DECLARE primero INT DEFAULT 1;
    DECLARE cadena LONGTEXT DEFAULT "";
    DECLARE acumulador INT;
    DECLARE contador INT;
    WHILE primero <= num DO
		SET acumulador = 1;
        SET contador = 0;
		WHILE acumulador <= primero DO
			IF (primero % acumulador = 0) THEN
				SET contador = contador+1;
            END IF;
            SET acumulador = acumulador+1;
        END WHILE;
        IF contador <=2 THEN
			SET cadena = CONCAT(cadena,CAST(primero AS CHAR(10)),", ");
		END IF;
        SET primero = primero+1;
    END WHILE;
    SET primos = SUBSTR(cadena,1,length(cadena)-2);
END //
DELIMITER ;
SET @a = "";
CALL primos(20,@a);
SELECT @a;

-- Ejercicio 12
DROP PROCEDURE IF EXISTS operacion;
DELIMITER //
CREATE PROCEDURE operacion()
BEGIN
	DECLARE resulado FLOAT;
    SET resulado = SQRT(5+POW(2,3)-7.456);
    SELECT resulado;
END //
DELIMITER ;

CALL operacion();

-- Ejercicio 13
DROP PROCEDURE IF EXISTS tablasPotencias;
DELIMITER //
CREATE PROCEDURE tablasPotencias(IN num INT)
BEGIN
	DECLARE contador INT DEFAULT 0;
    DECLARE cadena VARCHAR(255);
    DROP TEMPORARY TABLE IF EXISTS tablapotencias;
    CREATE TEMPORARY TABLE tablapotencias(
		numeros VARCHAR(255)
    );
    WHILE contador <= 10 DO
		SET cadena = CONCAT(num,"^",contador," = ",POW(num,contador));
        INSERT INTO tablapotencias VALUES (cadena);
        SET contador = contador+1;
    END WHILE;
    SELECT * FROM tablapotencias;
END //
DELIMITER ;

CALL tablasPotencias(3);

-- Ejercicio 14
DROP FUNCTION IF EXISTS areaCirculo;
DELIMITER //
CREATE FUNCTION areaCirculo(radio double) RETURNS FLOAT DETERMINISTIC
BEGIN
	DECLARE resultado FLOAT;
    SET resultado = PI()*POW(radio,2);
    RETURN resultado;
END //
DELIMITER ;

SELECT areaCirculo(2);

-- Ejercicio 15
DROP FUNCTION IF EXISTS contarProductos;
DELIMITER //
CREATE FUNCTION contarProductos() RETURNS INT DETERMINISTIC
BEGIN
    DECLARE numProductos INT;
    SET numProductos = (SELECT COUNT(*) FROM productos WHERE coste_producto > 5);
    RETURN numProductos;
END //
DELIMITER ;
SELECT contarProductos();

-- Ejercicio 16
CREATE TABLE ofertas_p_nuevo(
	id TINYINT,
    nombre VARCHAR(20),
    precio FLOAT,
    calidad tinyint,
    coste_producto float
);

DROP TRIGGER IF EXISTS ofertas;
DELIMITER //
CREATE TRIGGER ofertas BEFORE INSERT ON productos FOR EACH ROW
	BEGIN
		INSERT INTO ofertas_p_nuevo VALUES (new.id,new.nombre,new.precio,new.calidad,new.coste_producto-(new.coste_producto*0.08));
	END //
DELIMITER ;
INSERT INTO productos VALUES (6,"Galletas5",2.5,3,100);

-- Ejercicio 17
CREATE TABLE antiguo_producto(
	nombre VARCHAR(20),
    precio FLOAT
);

DROP TRIGGER IF EXISTS onDeleteProductos;
DELIMITER //
CREATE TRIGGER onDeleteProductos BEFORE DELETE ON productos FOR EACH ROW
	BEGIN
		INSERT INTO antiguo_producto VALUES (old.nombre,old.coste_producto);
	END //
DELIMITER ;

DELETE FROM productos WHERE id = 1;

-- Ejercicio 18
CREATE TABLE proveedor_novel(
	nombre VARCHAR(20),
    confianza VARCHAR(20) DEFAULT "BAJA"
);

DROP TRIGGER IF EXISTS onUpdateProveedores;
DELIMITER //
CREATE TRIGGER onUpdateProveedores BEFORE UPDATE ON productos FOR EACH ROW
	BEGIN
		INSERT INTO proveedor_novel(nombre) VALUES (old.nombre);
	END //
DELIMITER ;

UPDATE productos SET nombre = "SampleText" WHERE id = 2;

/*
DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY
CURRENT_TIMESTAMP()
*/