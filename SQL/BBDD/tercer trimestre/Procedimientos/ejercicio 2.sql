DROP DATABASE IF EXISTS ejercicio2;
CREATE DATABASE ejercicio2;
SHOW DATABASES;
USE ejercicio2;
CREATE TABLE IF NOT EXISTS ejercicio2(
	nombre VARCHAR(10),
    apellido VARCHAR(10),
    semestre VARCHAR(10)
);
SHOW TABLES;
INSERT INTO ejercicio2 VALUES ("a","a","a");
INSERT INTO ejercicio2 VALUES ("b","b","b");
INSERT INTO ejercicio2 VALUES ("c","c","c");
SELECT * FROM ejercicio2;

BEGIN;
	INSERT INTO ejercicio2 VALUES ("d","d","d");
ROLLBACK;
SELECT * FROM ejercicio2;
BEGIN;
	INSERT INTO ejercicio2 VALUES ("d","d","d");
COMMIT;
SELECT * FROM ejercicio2;

