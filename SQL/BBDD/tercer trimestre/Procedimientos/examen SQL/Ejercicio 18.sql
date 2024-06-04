DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

-- Creamos la tabla coche_descatalogado con los mismos campos que coches
DROP TABLE IF EXISTS coche_descatalogado;
CREATE TABLE coche_descatalogado(
	id tinyint Primary key, 
marca varchar(20) ,
matricula varchar(10) ,
precio float ,
oferta int ,
precio_descuento float ,
proveedor tinyint ,
peso int ,
denominacion_peso varchar(10) ,
stock int ,
nombre varchaR(10)
);

DROP TRIGGER IF EXISTS onUpdateCoches;
DELIMITER //
-- Cuando se actualice una entrada en la tabla coches se insertaran todos los valores en la tabla coche_descatalogado
CREATE TRIGGER onUpdateCoches BEFORE UPDATE ON coches FOR EACH ROW
	BEGIN
		INSERT INTO coche_descatalogado VALUES (old.id,old.marca,old.matricula,old.precio,old.oferta,old.precio_descuento,old.proveedor,old.peso,old.denominacion_peso,old.stock,old.nombre);
	END //
DELIMITER ;
-- Probamos el trigger
UPDATE coches SET nombre = "Ford" WHERE id = 4;

SELECT * FROM coche_descatalogado;