CREATE DATABASE ejercicio7;
use ejercicio7;

CREATE TABLE asociaciones(
	cod_asociacion VARCHAR(8),
    nacionalidad VARCHAR(30),
    nombre VARCHAR(12),
    CONSTRAINT pk_asociaciones PRIMARY KEY (cod_asociacion)
);

CREATE TABLE trabajadores(
	n_ss VARCHAR(30),
    nombre VARCHAR(12),
    apellido VARCHAR(12),
    n_cuenta_corriente VARCHAR(30),
    cod_asociacion VARCHAR(8),
    CONSTRAINT pk_trabajadores PRIMARY KEY (n_ss),
    CONSTRAINT fk_trabajadores_asociaciones FOREIGN KEY (cod_asociacion) REFERENCES asociaciones(cod_asociacion) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE socios(
	DNI VARCHAR(9),
    nombre VARCHAR(12),
    apellido1 VARCHAR(12),
    apellido2 VARCHAR(12),
    fecha_nacimiento DATE,
    nom_centro_escolar VARCHAR(30),
    profesión VARCHAR(30),
    jubilacion BOOLEAN,
    puntos NUMERIC,
    CONSTRAINT pk_socios PRIMARY KEY (DNI)
);

CREATE TABLE pertenecen(
	cod_asociacion VARCHAR(8),
	DNI VARCHAR(9),
	n_socio VARCHAR(8),
    CONSTRAINT pk_pertenecen PRIMARY KEY (cod_asociacion,DNI),
    CONSTRAINT fk_pertenecen_socios FOREIGN KEY (DNI) REFERENCES socios(DNI) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_pertenecen_asociaciones FOREIGN KEY (cod_asociacion) REFERENCES asociaciones(cod_asociacion) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE rutas(
	cod_ruta VARCHAR(8),
    nombre VARCHAR(30),
    kilometros NUMERIC(3),
    precio NUMERIC(3),
    puntos NUMERIC,
    n_paradas NUMERIC,
    CONSTRAINT pk_rutas PRIMARY KEY (cod_ruta)
);

CREATE TABLE realizan (
	DNI VARCHAR(9),
    cod_ruta VARCHAR(8),
    CONSTRAINT pk_realizan PRIMARY KEY (DNI,cod_ruta),
    CONSTRAINT fk_realizan_socios FOREIGN KEY (DNI) REFERENCES socios(DNI) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_realizan_rutas FOREIGN KEY (cod_ruta) REFERENCES rutas(cod_ruta) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE regalos(
	cod_regalo VARCHAR(9),
    nombre VARCHAR(30),
    coste NUMERIC,
    fecha_compra DATE,
    CONSTRAINT pk_regalos PRIMARY KEY (cod_regalo)
);

CREATE TABLE compran(
	DNI VARCHAR(9),
    cod_regalo VARCHAR(9),
    CONSTRAINT pk_compran PRIMARY KEY (DNI,cod_regalo),
    CONSTRAINT fk_compran_socios FOREIGN KEY (DNI) REFERENCES socios(DNI) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_compran_regalos FOREIGN KEY (cod_regalo) REFERENCES regalos(cod_regalo) ON UPDATE CASCADE ON DELETE CASCADE
);