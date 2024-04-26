-- Creación de la base de datos
DROP DATABASE IF EXISTS switchcasepa;
CREATE DATABASE switchcasepa;
USE switchcasepa;

-- Creación de las tablas clientes y provincias
drop table if exists clientes;
 drop table if exists provincias;

 create table clientes (
  codigo int unsigned auto_increment,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint unsigned,
  telefono varchar(11),
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint unsigned auto_increment,
  nombre varchar(20),
  primary key (codigo)
 );

-- Inserción de valores
INSERT INTO clientes VALUES (01,"Nombre1","Domicilio 1","ciudad 1",1,"29874666");
INSERT INTO clientes VALUES (02,"Nombre2","Domicilio 2","ciudad 2",2,"28925688");
INSERT INTO clientes VALUES (04,"Nombre2","Domicilio 2","ciudad 2",2,"28925688");
INSERT INTO clientes VALUES (03,"Nombre3","Domicilio 3","ciudad 3",3,"25785952");

INSERT INTO provincias VALUES (1,"provincia 1");
INSERT INTO provincias VALUES (2,"provincia 2");
INSERT INTO provincias VALUES (3,"provincia 3");


-- Creación del procedimiento mayor
DROP PROCEDURE IF EXISTS mayor;

DELIMITER //
CREATE PROCEDURE mayor(IN entrada VARCHAR(20),IN entrada2 VARCHAR(20))
BEGIN
	-- Declaración de variables locales que almacenan el número de veces que aparece cada provincia
	DECLARE canti1 INT;
    DECLARE canti2 INT;
    SET canti1 = (SELECT COUNT(codigoprovincia) FROM clientes WHERE codigoprovincia = (SELECT codigo FROM provincias WHERE nombre = entrada));
    SET canti2 = (SELECT COUNT(codigoprovincia) FROM clientes WHERE codigoprovincia = (SELECT codigo FROM provincias WHERE nombre = entrada2));
    -- Case que devuelve si uno es mayor que otro o son iguales
    CASE canti1
			WHEN canti1 > canti2 THEN
				SELECT entrada;
			WHEN canti1 < canti2 THEN
				SELECT entrada2;
			ELSE
				SELECT entrada,entrada2;
		END CASE;
    
    
END//
DELIMITER ;
-- Llamada al procedimiento
CALL mayor("provincia 1","provincia 3");