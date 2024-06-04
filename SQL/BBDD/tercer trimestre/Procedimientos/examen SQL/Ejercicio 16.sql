DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

-- SELECT ((RAND() * (4 - 1)) + 1);
ALTER TABLE coches ADD COLUMN nombre VARCHAR(10);
UPDATE coches SET nombre = "Coche1" WHERE id = 1;
UPDATE coches SET nombre = "Coche2" WHERE id = 2;
UPDATE coches SET nombre = "Coche3" WHERE id = 3;
UPDATE coches SET nombre = "Coche4" WHERE id = 4;
UPDATE coches SET nombre = "Coche5" WHERE id = 5;

-- Tabla donde insertaremos los datos que recogerá el trigger
DROP TABLE IF EXISTS ecologico;
CREATE TABLE ecologico(
	nombre VARCHAR(10),
    etiqueta VARCHAR(3)
);

DROP TRIGGER IF EXISTS onInsertCoches;
DELIMITER //
CREATE TRIGGER onInsertCoches AFTER INSERT ON coches FOR EACH ROW
	BEGIN
		-- Declaramos la variable conde guardaremos el número aleatorio y la etiqueta
		DECLARE aleatorio INT;
        DECLARE etiq VARCHAR(3);
        -- Calculamos el número aleatorio
        SET aleatorio = ((RAND() * (4 - 1)) + 1); 
        -- Según si es 1,2,3 o 4 le asignamos una etiqueta
        IF aleatorio = 1 THEN
			SET etiq = "B";
		ELSEIF aleatorio = 2 THEN
			SET etiq = "C";
		ELSEIF aleatorio = 3 THEN
			SET etiq = "Eco";
		ELSE
			SET etiq= "0";
        END IF;
        -- Insertamos en la tabla creada anteriormente los valores del nombre y la etiqueta
		INSERT INTO ecologico VALUES (new.nombre,etiq);
	END //
DELIMITER ;
-- Probamos el trigger
INSERT INTO coches(marca,matricula,precio,proveedor,peso,stock,nombre) VALUES ("Marca1","ASD-98745",50000,1,5000,2,"Descapotao");

SELECT * FROM ecologico;