DROP DATABASE IF EXISTS clientes;
CREATE DATABASE IF NOT EXISTS clientes;
USE clientes;
CREATE TABLE customer (
	codigo INT NOT NULL PRIMARY KEY,
    nombre CHAR(20)
) ENGINE=InnoDB;
BEGIN;
INSERT INTO customer VALUES (10,'Heikki');
COMMIT;
BEGIN;
INSERT INTO customer VALUES (15,'John');
ROLLBACK;
SELECT * FROM customer;


/*A*/
BEGIN;
/*B*/
INSERT INTO customer VALUES (15,'John');
/*C*/
INSERT INTO customer VALUES (20,'Michael');
/*D*/
UPDATE customer SET nombre = 'Joseph' WHERE nombre = 'John';
/*E*/
COMMIT;
/*F*/
SELECT * FROM customer;
/*G*/
BEGIN;
/*H*/
INSERT INTO customer VALUES (25,'Alex');
/*I*/
DELETE FROM customer WHERE nombre = 'Michael';
/*J*/
ROLLBACK;
/*K*/
SELECT * FROM customer;
/*L*/
SELECT * FROM customer WHERE nombre LIKE "J%";
