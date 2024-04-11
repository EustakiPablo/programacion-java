DROP DATABASE IF EXISTS procedimiento_almacenado;
CREATE DATABASE procedimiento_almacenado;
USE procedimiento_almacenado;
CREATE TABLE cliente(
	id VARCHAR(3) PRIMARY KEY,
    nombre VARCHAR(12)
);
CREATE TABLE pedido (
	id_pedido VARCHAR(3) PRIMARY KEY,
    id_cliente VARCHAR(3),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

DROP PROCEDURE IF EXISTS RELLENAR;
DELIMITER //
CREATE PROCEDURE RELLENAR()
BEGIN
	INSERT INTO cliente VALUES("1","nombre1");
    INSERT INTO cliente VALUES("2","nombre2");
    INSERT INTO cliente VALUES("3","nombre3");
    INSERT INTO pedido VALUES ("001","1");
    INSERT INTO pedido VALUES ("002","2");
    INSERT INTO pedido VALUES ("003","1");
END //
DELIMITER ;
CALL RELLENAR();
SELECT * FROM cliente,pedido WHERE cliente.id = pedido.id_cliente;