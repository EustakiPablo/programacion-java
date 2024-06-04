DROP DATABASE IF EXISTS examen_a;
CREATE DATABASE examen_a;
USE examen_a;

DROP TABLE IF EXISTS proveedor;
CREATE TABLE proveedor(
	id_proveedor TINYINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    cif VARCHAR(9) NOT NULL,
    direccion VARCHAR(20),
    telefono VARCHAR(9) NOT NULL
);

INSERT INTO proveedor(nombre,cif,telefono) VALUES ("Proveedor1","A123456","789456123");
INSERT INTO proveedor(nombre,cif,telefono) VALUES ("Proveedor3","B123456","486426153");
INSERT INTO proveedor(nombre,cif,telefono) VALUES ("Proveedor2","A265874","159753486");

-- Es necesario que alteremos la tabla coches para poder relacionar las tablas. Añadimos como clave el id de proveedor
ALTER TABLE coches ADD COLUMN proveedor TINYINT;
ALTER TABLE coches ADD FOREIGN KEY (proveedor) REFERENCES proveedor(id_proveedor);
UPDATE coches SET proveedor = 1 WHERE id = 1;
UPDATE coches SET proveedor = 2 WHERE id = 2;
UPDATE coches SET proveedor = 1 WHERE id = 3;
UPDATE coches SET proveedor = 3 WHERE id = 4;
UPDATE coches SET proveedor = 3 WHERE id = 5;


DROP PROCEDURE IF EXISTS verCochesPorProveedores;
DELIMITER //
CREATE PROCEDURE verCochesPorProveedores()
	BEGIN
		-- Mostramos todos los datos de proveedores y coches que estén relacionados
		SELECT proveedor.*,coches.* FROM coches,proveedor WHERE proveedor.id_proveedor = coches.proveedor;
	END //
DELIMITER ;
CALL verCochesPorProveedores();
