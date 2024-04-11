DROP DATABASE Centro_Comercial;
CREATE DATABASE Centro_Comercial;
USE Centro_Comercial;
/*EJERCICIO 1*/
CREATE TABLE COMPRADORES_1(
	CIF_comprador VARCHAR(11),
    Nombre_social VARCHAR(30),
    Domicilio_social VARCHAR(30),
    Localidad VARCHAR(30),
    C_postal VARCHAR(5),
    Telefono VARCHAR(9)
);

CREATE TABLE ARTICULOS_1(
	Referencia_articulo VARCHAR(12),
    Descripcion_articulo VARCHAR(30),
    Precio_unidad DECIMAL(6,2),
    IVA INT(2),
    Existencias_actuales INT(5)
);

CREATE TABLE FACTURAS_1(
	Num_Factura INT(6),
    Fecha_factura DATE,
    CIF_cliente VARCHAR(11)
);

CREATE TABLE LINEAS_FACTURA_1(
	Num_Factura INT(6),
    Referencia_articulo VARCHAR(12),
    Unidades INT(3)
);
/*EJERCICIO 2*/
CREATE TABLE COMPRADORES_2(
	CIF_comprador VARCHAR(11) PRIMARY KEY,
    Nombre_social VARCHAR(30) UNIQUE,
    Domicilio_social VARCHAR(30),
    Localidad VARCHAR(30),
    C_postal VARCHAR(5),
    Telefono VARCHAR(9) NOT NULL
);

CREATE TABLE ARTICULOS_2(
	Referencia_articulo VARCHAR(12) PRIMARY KEY,
    Descripcion_articulo VARCHAR(30),
    Precio_unidad DECIMAL(6,2),
    IVA INT(2) CHECK (IVA BETWEEN 5 AND 25),
    Existencias_actuales INT(5) DEFAULT(0)
);

CREATE TABLE FACTURAS_2(
	Num_Factura INT(6) PRIMARY KEY,
    Fecha_factura DATE,
    CIF_cliente VARCHAR(11) REFERENCES COMPRADORES_2 (CIF_comprador)
);

CREATE TABLE LINEAS_FACTURA_2(
	Num_Factura INT(6),
    Referencia_articulo VARCHAR(12),
    Unidades INT(3)
);
/*EJERCICIO 3*/
CREATE TABLE COMPRADORES_3(
	CIF_comprador VARCHAR(11),
    Nombre_social VARCHAR(30),
    Domicilio_social VARCHAR(30),
    Localidad VARCHAR(30),
    C_postal VARCHAR(5),
    Telefono VARCHAR(9),
    CONSTRAINT PK_COMPRADORES_3 PRIMARY KEY (CIF_comprador),
    CONSTRAINT UQ_COMPRADORES_NOMBRE_SOCIAL_3 UNIQUE (Nombre_social)
);

CREATE TABLE ARTICULOS_3(
	Referencia_articulo VARCHAR(12),
    Descripcion_articulo VARCHAR(30),
    Precio_unidad DECIMAL(6,2),
    IVA INT(2),
    Existencias_actuales INT(5)
);

CREATE TABLE FACTURAS_3(
	Num_Factura INT(6),
    Fecha_factura DATE,
    CIF_cliente VARCHAR(11),
    CONSTRAINT PS_FACTURAS_3 PRIMARY KEY (Num_Factura),
    CONSTRAINT FK_FACTURA_COMPRADORES_3 FOREIGN KEY (CIF_cliente) REFERENCES COMPRADORES_3(CIF_comprador)
);

CREATE TABLE LINEAS_FACTURA_3(
	Num_Factura INT(6),
    Referencia_articulo VARCHAR(12),
    Unidades INT(3)
);

/*EJERCICIO 4*/
ALTER TABLE FACTURAS_1 ADD PRIMARY KEY (Num_factura);
/*EJERCICIO 5*/
ALTER TABLE LINEAS_FACTURA_1 ADD CONSTRAINT fk_lineas_factura_1 FOREIGN KEY (Num_factura) REFERENCES FACTURAS_1(Num_factura);
/*EJERCICIO 6*/
ALTER TABLE ARTICULOS_1 ADD CONSTRAINT uq_articulos_descripcion_1 UNIQUE (Descripcion_articulo);
/*EJERCICIO 7*/
ALTER TABLE COMPRADORES_1 MODIFY Telefono INT;