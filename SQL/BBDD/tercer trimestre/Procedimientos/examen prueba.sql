DROP DATABASE IF EXISTS examen1;
CREATE DATABASE IF NOT EXISTS examen1;
USE examen1;

-- Ejercicio 1
DROP PROCEDURE IF EXISTS imprimirNumeros;
DELIMITER //
CREATE PROCEDURE imprimirNumeros(IN base INT)
BEGIN
	DECLARE comienzo INT DEFAULT 1;
    DECLARE cadenaFinal VARCHAR(255) DEFAULT "";
    WHILE comienzo <= base DO
		SET cadenaFinal = CONCAT(cadenaFinal,comienzo,"-");
        SET comienzo = comienzo+1;
    END WHILE;
    SET cadenaFinal = SUBSTR(cadenaFinal,1,LENGTH(cadenaFinal)-1);
    SELECT cadenaFinal;
END //
DELIMITER ;
CALL imprimirNumeros(5);

-- Ejercicio 2
DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente(
	dni VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(20),
    apellido1 VARCHAR(20),
    apellido2 VARCHAR(20),
    telefono VARCHAR(9),
    correo VARCHAR(40)
);
DROP PROCEDURE IF EXISTS insertarClientes;
DELIMITER //
CREATE PROCEDURE insertarClientes(IN dni VARCHAR(10),IN nombre VARCHAR(20),IN apellido1 VARCHAR(20),IN apellido2 VARCHAR(20),IN telefono VARCHAR(9),IN correo VARCHAR(40))
BEGIN
	INSERT INTO cliente VALUES (dni,nombre,apellido1,apellido2,telefono,correo);
END //
DELIMITER ;
CALL insertarClientes("654626WE","Cristian","Falcon","Garcia","287968580","correo@correo");

-- Ejercicio 3
DROP PROCEDURE IF EXISTS verClientes;
DELIMITER //
CREATE PROCEDURE verClientes()
BEGIN
	SELECT * FROM cliente;
END //
DELIMITER ;
CALL verClientes();

-- Ejercicio 4
DROP TABLE IF EXISTS paciente;
CREATE TABLE paciente(
	dni VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(20),
    apellido1 VARCHAR(20),
    apellido2 VARCHAR(20),
    correo VARCHAR(40),
    pasillo CHAR
);
INSERT INTO paciente VALUES ("8468398W","Cristian","Falcon","Garcia","kfsdjafpios@sogjhn","A");
DROP PROCEDURE IF EXISTS verPaciente;
DELIMITER //
CREATE PROCEDURE verPaciente()
BEGIN
	SELECT * FROM paciente;
END //
DELIMITER ;
CALL verPaciente();


-- Ejercicio 5
DROP TABLE IF EXISTS medico;
CREATE TABLE medico(
	dni VARCHAR(10) PRIMARY KEY,
    id INT,
    nombre VARCHAR(20),
    apellido1 VARCHAR(20),
    apellido2 VARCHAR(20),
    telefono VARCHAR(9),
    correo VARCHAR(40)
);
INSERT INTO medico VALUES("846838W",1,"Cristian","Falcon","Garcia","5296728","kfsdjafpios@sogjhn");

DROP PROCEDURE IF EXISTS contarMedicos;
DELIMITER //
CREATE PROCEDURE contarMedicos()
BEGIN
	SELECT COUNT(dni) FROM medico;
END //
DELIMITER ;
CALL contarMedicos();

-- Ejercicio 6
DROP TABLE IF EXISTS dimension;
CREATE TABLE dimension(
	altura DOUBLE,
    tamanyo VARCHAR(10)
);
DROP PROCEDURE IF EXISTS mayorMenor;
DELIMITER //
CREATE PROCEDURE mayorMenor(IN altura DOUBLE)
BEGIN
	IF altura <= 5 THEN
		INSERT INTO dimension VALUES (altura,"pequeño");
    ELSEIF altura <= 10 THEN
    INSERT INTO dimension VALUES (altura,"mediano");
    ELSE
		INSERT INTO dimension VALUES (altura,"grande");
    END IF;
    SELECT * FROM dimension;
END //
DELIMITER ;
CALL mayorMenor(20);

-- Ejercicio 7
DROP PROCEDURE IF EXISTS valorVenta;
DELIMITER //
CREATE PROCEDURE valorVenta(IN valProd DOUBLE)
BEGIN
	SELECT valProd+(valProd*0.15);
END //
DELIMITER ;
CALL valorVenta(2000);

-- Ejercicio 8
DROP PROCEDURE IF EXISTS promedio3notas;
DELIMITER //
CREATE PROCEDURE promedio3notas(IN nota1 DOUBLE,IN nota2 DOUBLE, IN nota3 DOUBLE)
BEGIN
	SET nota1 = nota1*0.25;
    SET nota2 = nota2*0.25;
    SET nota3 = nota3*0.5;
    SELECT (nota1+nota2+nota3);
END //
DELIMITER ;
CALL promedio3notas(2,2,5);

-- Ejercicio 9
DROP PROCEDURE IF EXISTS kiloUvas;
-- Inicio del procedimiento
DELIMITER //
CREATE PROCEDURE kiloUvas(IN precioInicial DOUBLE,IN tipo CHAR, IN tamanyo INT)
BEGIN
	-- Declarar variable precioFinal
	DECLARE precioFinal DOUBLE DEFAULT 0;
    SET precioFinal = precioInicial;
    -- Si es de tipo A
	IF tipo = 'A' THEN
		-- Si es de tamaño 1
		IF tamanyo = 1 THEN
			SET precioFinal = (precioFinal+0.20);
            SELECT precioFinal;
		-- Si es de tamaño 2
		ELSEIF tamanyo = 2 THEN
			SET precioFinal = (precioFinal+0.30);
            SELECT precioFinal;
		-- Si no es correcto el tamaño
		ELSE
			SELECT "Tamaño erroneo";
        END IF;
	-- Si es de tipo B
	ELSEIF tipo = 'B' THEN
		-- Si es de tamaño 1
		IF tamanyo = 1 THEN
			SET precioFinal = (precioFinal-0.30);
            SELECT precioFinal;
		-- Si es de tamaño 2
		ELSEIF tamanyo = 2 THEN
			SET precioFinal = (precioFinal-0.50);
            SELECT precioFinal;
		-- Si no es correcto el tamaño
		ELSE
			SELECT "Tamaño erroneo";
        END IF;
	-- Si no es correcto el tipo
	ELSE
		SELECT "Tipo erroneo";
    END IF;
END //
DELIMITER ;
CALL kiloUvas(2.0,'A',2);

-- Ejercicio 10
DROP PROCEDURE IF EXISTS actualizarApellido1;
DELIMITER //
CREATE PROCEDURE actualizarApellido1(IN apellidoAntiguo VARCHAR(20), IN nuevoApellido VARCHAR(20))
BEGIN
	UPDATE cliente SET apellido1 = nuevoApellido WHERE apellido1 = apellidoAntiguo;
END //
DELIMITER ;
CALL actualizarApellido1("Falcon","Falcon1");

-- Ejercicio 11
DROP PROCEDURE IF EXISTS borrarCliente;
DELIMITER //
CREATE PROCEDURE borrarCliente(IN dnib VARCHAR(20))
BEGIN
	DELETE FROM cliente WHERE dni = dnib;
END //
DELIMITER ;
CALL borrarCliente("654626WE");

-- Ejercicio 12
DROP PROCEDURE IF EXISTS suma1a5;
DELIMITER //
CREATE PROCEDURE suma1a5()
BEGIN
	DECLARE num1 INT DEFAULT 1;
    DECLARE num2 INT DEFAULT 5;
    DECLARE numFinal INT DEFAULT 0;
    WHILE num1 <= num2 DO
		SET numFinal = numFinal+num1;
        SET num1 = num1+1;
    END WHILE;
    SELECT numFinal;
END //
DELIMITER ;
CALL suma1a5();

-- Ejercicio 13
DROP PROCEDURE IF EXISTS in5reg;
DELIMITER //
CREATE PROCEDURE in5reg()
BEGIN
	INSERT INTO cliente VALUES("654626WE","Cristian","Falcon","Garcia","287968580","correo@correo");
    INSERT INTO cliente VALUES("2596859E","Cristian","Falcon","Garcia","287968580","correo@correo");
    INSERT INTO cliente VALUES("28b98qwe","Cristian","Falcon","Garcia","287968580","correo@correo");
    INSERT INTO cliente VALUES("548998QW","Cristian","Falcon","Garcia","287968580","correo@correo");
    INSERT INTO cliente VALUES("59598ui5","Cristian","Falcon","Garcia","287968580","correo@correo");
END //
DELIMITER ;
CALL in5reg();

-- Ejercicio 14
DROP PROCEDURE IF EXISTS pares;
DELIMITER //
CREATE PROCEDURE pares()
BEGIN
	DECLARE maximo INT DEFAULT 100;
    DECLARE comienzo INT DEFAULT 1;
    DECLARE numerosFinal VARCHAR (255) DEFAULT "";
    WHILE comienzo <= 100 DO
		IF comienzo%2 = 0 THEN
			SET numerosFinal = CONCAT(numerosFinal,comienzo,", ");
        END IF;
        SET comienzo = comienzo+1;
    END WHILE;
    SET numerosFinal = SUBSTR(numerosFinal,1,LENGTH(numerosFinal)-2);
    SELECT numerosFinal;
END //
DELIMITER ;
CALL pares();

-- Ejercicio 15
DROP PROCEDURE IF EXISTS sumaFactoriales;
DELIMITER //
CREATE PROCEDURE sumaFactoriales()
BEGIN
	-- numero que toca factorial
	DECLARE num INT DEFAULT 1;
    -- acumulador de números hasta que sea igual a la variable num
    DECLARE acumulador INT DEFAULT 1;
    -- el numero que se mostrará
    DECLARE numFinal INT DEFAULT 0;
    -- valor del factiorial que se irá sumando en numFinal
    DECLARE fact INT DEFAULT 1;
    -- Bucle que define en qué numero estamos
    WHILE num <= 4 DO
		-- bucle que calcula el factorial
		WHILE acumulador <= num DO
			SET fact = fact*acumulador;
            SET acumulador = acumulador+1;
        END WHILE;
        -- Se suma el factoria al numFinal y se reinicia el acumulador y el factorial para la siguiente iteración del bucle
        -- SELECT fact;
        SET numFinal = numFinal+fact;
        set fact = 1;
        SET acumulador = 1; 
        SET num = num+1;
    END WHILE;
    SELECT numFinal;
END //
DELIMITER ;
CALL sumaFactoriales();

-- Ejercicio 16



/*delimiter //
CREATE PROCEDURE potencia(IN base INT, IN exponente INT, OUT resultado INT)
BEGIN
	-- Si el exponente vale 0 el resultado siempre es 1
	IF exponente = 0 THEN
		SET resultado = 1;
	ELSE
		-- Llamamos de nuevo al procedimiento restando uno al exponente
		CALL potencia(base,exponente-1,resultado);
        -- Asignamos el resultado
		SET resultado = resultado*base;
	END IF;
END //
delimiter ;*/