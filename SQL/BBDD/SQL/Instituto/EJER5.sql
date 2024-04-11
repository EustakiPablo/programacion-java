/*Cristian Falcon*/

DROP DATABASE EJER5;
CREATE DATABASE EJER5;
USE EJER5;
CREATE TABLE compradores(
	cif_comprador VARCHAR(11),
    nombre_social VARCHAR(30),
    domicilio_social VARCHAR(30),
    localidad VARCHAR(30),
    c_postal VARCHAR(5),
    telefono VARCHAR(9) NOT NULL,
    CONSTRAINT pk_compradores PRIMARY KEY (cif_comprador),
    CONSTRAINT uq_compradores UNIQUE (nombre_social)
);

CREATE TABLE articulos(
	referencia_articulo VARCHAR(12),
    descripcion_articulo VARCHAR(30),
    precio_unidad NUMERIC(6,2),
    iva NUMERIC,
    existencias_actuales NUMERIC(5) DEFAULT(0),
    CONSTRAINT pk_articulos PRIMARY KEY (referencia_articulo),
    CONSTRAINT ck_iva CHECK (iva BETWEEN 5 AND 25)
);

CREATE TABLE facturas(
	num_factura NUMERIC(6),
    fecha_factura DATE DEFAULT(2005/01/01),
    cif_cliente VARCHAR(11),
    cod_oficina NUMERIC(4),
    CONSTRAINT ck_oficina CHECK(cod_oficina BETWEEN 1000 AND 9999),
    CONSTRAINT pk_facturas PRIMARY KEY (num_factura),
    CONSTRAINT fk_facturas_compradores FOREIGN KEY (cif_cliente) REFERENCES compradores(cif_comprador)
);

CREATE TABLE lineas_factura(
	num_factura NUMERIC(6),
    referencia_articulo VARCHAR(12),
    unidades NUMERIC(3),
    CONSTRAINT pk_lineas_factura PRIMARY KEY (num_factura,referencia_articulo),
    CONSTRAINT fk_lineas_facturas FOREIGN KEY (num_factura) REFERENCES facturas(num_factura) ON DELETE CASCADE,
    CONSTRAINT fk_lineas_articulos FOREIGN KEY (referencia_articulo) REFERENCES articulos(referencia_articulo)
);

/*EJERCICIO 1*/

INSERT INTO compradores VALUES ("111111-L","TELARES ASUNCION","C. LA RUA 5","ALBACETE","02002","97223141");
INSERT INTO compradores VALUES ("222222-J","TEXTIL LAGO","PLAZA MAYOR 2","ALMERIA","04131","95434567");

INSERT INTO articulos VALUES ("01-LANA","LANA 100% NATURAL",31.09,10,100);
INSERT INTO articulos VALUES ("02-ALGODON","ALGODÓN DE 2 CABOS",18.00,10,155);
INSERT INTO articulos VALUES ("03-SEDA","SEDA CHINA", 55.50,15,190);
INSERT INTO articulos VALUES ("04-LINO","LINO EUROPEO",44.00,12,250);

INSERT INTO facturas VALUES (1,"2004/05/12","111111-L",1212);
INSERT INTO facturas VALUES (2,"2004/07/18","111111-L",1231);
INSERT INTO facturas VALUES (3,"2004/07/31","222222-J",1406);
INSERT INTO facturas VALUES (4,"2003/08/10","222222-J",1212);

INSERT INTO lineas_factura VALUES (1,"01-LANA",120);
INSERT INTO lineas_factura VALUES (1,"04-lino",75);
INSERT INTO lineas_factura VALUES (2,"01-LANA",20);
INSERT INTO lineas_factura VALUES (2,"02-ALGODON",50);

/*EJERCICIO 2*/

INSERT INTO articulos (referencia_articulo,precio_unidad,iva) VALUES ("06-CUERO",10.99,10);
SELECT * FROM articulos;
/*La descripción se queda como null por ser un VARCHAR, mientras que las existencias quedan a 0 porque no pueden ser
nulas*/

/*EJERCICIO 3*/
UPDATE articulos SET iva=iva-1;

/*EJERCICIO 4*/
UPDATE articulos SET descripcion_articulo="LANA 90%NATURAL 10%ACRILICO" WHERE referencia_articulo="01-LANA";

/*EJERCICIO 5*/
ALTER TABLE lineas_factura DROP CONSTRAINT fk_lineas_articulos;
UPDATE articulos SET referencia_articulo="01-LANA90/10" WHERE referencia_articulo="01-LANA";
SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE lineas_factura ADD CONSTRAINT fk_lineas_articulos
FOREIGN KEY lineas_factura(referencia_articulo) REFERENCES articulos(referencia_articulo) ON UPDATE CASCADE;

/*EJERCICIO 6*/

DELETE FROM facturas WHERE num_factura=2;
SELECT * FROM facturas;
SELECT * FROM lineas_factura;
