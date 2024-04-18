/*Escribe un procedimiento que se llame calcular_max_min_media,
 que reciba como parámetro de entrada el nombre de la gama de
 un producto y devuelva como salida tres parámetros. El precio
 máximo, el precio mínimo y la media de los productos que existen
 en esa gama. Resuelva el ejercicio de dos formas distintas,
 utilizando SET y SELECT ... INTO.*/
#Creación de la base de datos
DROP DATABASE IF EXISTS calcminmax;
CREATE DATABASE calcminmax;
USE calcminmax;

#Creación de la tabla productos
DROP TABLE IF EXISTS productos;
CREATE TABLE productos(
	gama VARCHAR(15),
    precio NUMERIC(6,2)
);
#Inserción de datos
INSERT INTO productos VALUES ("Informatica",200);
INSERT INTO productos VALUES ("Informatica",400);
INSERT INTO productos VALUES ("Informatica",800);

INSERT INTO productos VALUES ("Ropa",150);
INSERT INTO productos VALUES ("Ropa",750);
INSERT INTO productos VALUES ("Ropa",450);





#Creación del procedimiento con SELECT ... INTO
DROP PROCEDURE IF EXISTS calcular_max_min_media;
DELIMITER //
CREATE PROCEDURE calcular_max_min_media(IN gam VARCHAR(15),OUT maximo DOUBLE,OUT minimo DOUBLE,OUT media DOUBLE)
BEGIN
    SELECT MAX(precio),MIN(precio),AVG(precio) INTO maximo,minimo,media FROM productos WHERE gama = gam GROUP BY gama;
END //
DELIMITER ;
CALL calcular_max_min_media("Informatica",@resultMax,@resultMin,@resultMedia);

SELECT @resultMax,@resultMin,@resultMedia;