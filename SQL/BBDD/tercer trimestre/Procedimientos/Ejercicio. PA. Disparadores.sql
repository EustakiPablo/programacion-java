-- Creación de las tablas persona y nuevosDatos
DROP DATABASE IF EXISTS ejemplotriggers;
CREATE DATABASE ejemplotriggers;
USE ejemplotriggers;
 
DROP TABLE IF EXISTS persona;
CREATE TABLE persona (
	codigo varchar(10),
	nombre varchar(50),
	edad decimal(3),
	PRIMARY KEY (codigo)
);
 DROP TABLE IF EXISTS nuevosDatos;
CREATE TABLE nuevosDatos (
	codigo varchar(10),
	cuando date,
	tipo char(1)
);
-- Inserción de valores
INSERT INTO persona VALUES("001","Cristian",23);
INSERT INTO persona VALUES("002","sgsdfg",86);
INSERT INTO persona VALUES("003","esdfhsdgh",27);

INSERT INTO nuevosDatos VALUES ("1","2001-05-03","A");
INSERT INTO nuevosDatos VALUES ("2","2001-05-03","B");
INSERT INTO nuevosDatos VALUES ("3","2001-05-03","C");


/*1 Amplía esta base de datos de ejemplo, para que antes de cada borrado, 
se anote en una tabla de "copia de seguridad" el dato que se va a borrar.*/

-- Creación de tablas copia de seguridad
DROP TABLE IF EXISTS copia_de_seguridad_persona;

CREATE TABLE copia_de_seguridad_persona(
	codigo varchar(10),
	nombre varchar(50),
	edad decimal(3),
	PRIMARY KEY (codigo)
);

DROP TABLE IF EXISTS copia_de_seguridad_nuevosDatos;

CREATE TABLE copia_de_seguridad_nuevosDatos(
	codigo varchar(10),
	cuando date,
	tipo char(1)
);

-- Creación del trigger antes de eliminar una fila en la tabla persona
DELIMITER //
 CREATE TRIGGER before_persona_delete
   BEFORE DELETE
   ON persona
   FOR EACH ROW
 BEGIN
	INSERT INTO copia_de_seguridad_persona VALUES (old.codigo,old.nombre,old.edad);
 END //
 DELIMITER ;
 
 -- Creación del trigger antes de eliminar una fila en la tabla nuevosDatos
 DELIMITER //
 CREATE TRIGGER before_nuevosDatos_delete
   BEFORE DELETE
   ON nuevosDatos
   FOR EACH ROW
 BEGIN
	INSERT INTO copia_de_seguridad_nuevosDatos VALUES (old.codigo,old.cuando,old.tipo);
 END //
 DELIMITER ;
 -- Prueba de los triggers
 DELETE FROM persona WHERE codigo = "002";
 DELETE FROM nuevosDatos WHERE codigo = "1";
 
SELECT * FROM copia_de_seguridad_nuevosDatos;
SELECT * FROM copia_de_seguridad_persona;

/*2 Amplía esta base de datos de ejemplo, para que se antes de cada
modificación se anote en una tabla "historico" el valor que antes 
tenía el registro que se va a modificar, junto con la fecha y hora actual.*/

-- Creación de tablas historicas. Se les añade la columna de fecha para guardar fecha y hora de las modificaciones
DROP TABLE IF EXISTS historico_persona;
DROP TABLE IF EXISTS historico_nuevosDatos;

CREATE TABLE historico_persona(
	codigo varchar(10),
	nombre varchar(50),
	edad decimal(3),
    fecha datetime
);
CREATE TABLE historico_nuevosDatos(
	codigo varchar(10),
	cuando date,
	tipo char(1),
    fecha datetime
);

-- Creación de trigger históricos
DELIMITER //
CREATE TRIGGER historico_before_update_persona
   BEFORE UPDATE
   ON persona
   FOR EACH ROW
BEGIN
	INSERT INTO historico_persona VALUES(old.codigo,old.nombre,old.edad,NOW());
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER historico_before_update_nuevosDatos
   BEFORE UPDATE
   ON nuevosDatos
   FOR EACH ROW
BEGIN
	INSERT INTO historico_nuevosDatos VALUES(old.codigo,old.cuando,old.tipo,NOW());
END //
DELIMITER ;

-- Prueba de que funciona
UPDATE persona SET nombre="cristian" WHERE codigo = "001";

UPDATE nuevosDatos SET tipo="H" WHERE codigo = "3";

SELECT * FROM historico_persona;
SELECT * FROM historico_nuevosDatos;