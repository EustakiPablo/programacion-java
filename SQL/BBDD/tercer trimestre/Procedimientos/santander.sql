DROP DATABASE IF EXISTS banco;
CREATE DATABASE banco;
USE banco;

DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente(
	id_cliente INT,
    nombre VARCHAR(20) NOT NULL,
    apellido1 VARCHAR (20) NOT NULL,
    apellido2 VARCHAR (20),
    dni VARCHAR(9) NOT NULL UNIQUE,
    correo VARCHAR(20),
    direccion VARCHAR(255),
    telf VARCHAR(12) NOT NULL,
    PRIMARY KEY (id_cliente)
);

DROP TABLE IF EXISTS cuenta;
CREATE TABLE cuenta(
	id_cuenta INT,
	ncuenta VARCHAR(20) UNIQUE NOT NULL,
    debito BOOLEAN NOT NULL,
    saldo DOUBLE NOT NULL,
    movimientos LONGTEXT,
    id_cliente INT NOT NULL,
    PRIMARY KEY (id_cuenta),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

INSERT INTO cliente VALUES (01,"Cristian","Falcón","García","49154478M","c@c.com","C/La vida","89492659");
INSERT INTO cuenta VALUES (01,"SL2875",TRUE,2000.0,"Nada aún",01);
INSERT INTO cuenta VALUES (02,"SL2355",FALSE,1500.0,"Nada aún",01);