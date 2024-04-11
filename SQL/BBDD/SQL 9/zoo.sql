/*DROP DATABASE zoo;*/
CREATE DATABASE zoo;
USE zoo;
CREATE TABLE especie (
	nom_cient VARCHAR(12) PRIMARY KEY,
    nom_generico VARCHAR(12),
    familia VARCHAR(12),
    info_trabajadores VARCHAR(100),
    explicacion VARCHAR(100),
    des_cuidados VARCHAR(100)
);
CREATE TABLE ejemplar (
	id_ejemplar VARCHAR(8) PRIMARY KEY,
    fecha_nacimiento DATE,
    fecha_muerte DATE,
    padre VARCHAR(8),
    madre VARCHAR(8),
    num_correlativo VARCHAR(8),
    nom_cient VARCHAR(12),
    CONSTRAINT fk_ejemplar_especie FOREIGN KEY (nom_cient) REFERENCES especie(nom_cient) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE cuidadores (
	id_cuidador VARCHAR(8) PRIMARY KEY,
    DNI VARCHAR(9),
    nombre VARCHAR(10),
    apellido1 VARCHAR(10),
    apellido2 VARCHAR (10),
    telefono VARCHAR(9)
);
CREATE TABLE cuidan1 (
	id_ejemplar VARCHAR(8),
    id_cuidador VARCHAR(8),
    CONSTRAINT pk_cuidan1 PRIMARY KEY (id_ejemplar,id_cuidador),
    CONSTRAINT fk_cuidan1_cuidadores FOREIGN KEY (id_cuidador) REFERENCES cuidadores(id_cuidador) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_cuidan1_ejemplar FOREIGN KEY (id_ejemplar) REFERENCES ejemplar(id_ejemplar) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE voluntarios (
	DNI VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(10),
    apellido1 VARCHAR(10),
    apellido2 VARCHAR (10),
    fecha_nacimiento DATE,
    telefono VARCHAR(9)
);
CREATE TABLE cuidan2 (
	id_ejemplar VARCHAR(8),
    DNI VARCHAR(9),
    CONSTRAINT pk_cuidan2 PRIMARY KEY (id_ejemplar,DNI),
    CONSTRAINT fk_cuidan2_ejemplar FOREIGN KEY (id_ejemplar) REFERENCES ejemplar(id_ejemplar) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_cuidan2_voluntarios FOREIGN KEY (DNI) REFERENCES voluntarios(DNI) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE visitan (
	id_cuidador VARCHAR(8),
    DNI VARCHAR(9), 
    fecha DATETIME,
    incidencias VARCHAR(50),
    CONSTRAINT pk_visitan PRIMARY KEY (id_cuidador,DNI,fecha),
    CONSTRAINT fk_visitan_cuidadores FOREIGN KEY (id_cuidador) REFERENCES cuidadores(id_cuidador) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_visitan_voluntarios FOREIGN KEY (DNI) REFERENCES voluntarios(DNI) ON UPDATE CASCADE ON DELETE CASCADE
);