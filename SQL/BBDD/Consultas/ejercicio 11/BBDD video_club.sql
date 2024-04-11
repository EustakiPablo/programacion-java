DROP DATABASE video_club;
CREATE DATABASE IF NOT EXISTS video_club;

USE video_club;

DROP TABLE IF EXISTS prestamo;
DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS genero;
DROP TABLE IF EXISTS socios;

CREATE TABLE socios(
	num_socio VARCHAR(4),
	nombre VARCHAR(15),
	apellidos VARCHAR(20),
	direccion VARCHAR(30),
	telefono VARCHAR(9) NOT NULL,
	CONSTRAINT pk_socios PRIMARY KEY(num_socio)
);

CREATE TABLE genero(
	cod_genero VARCHAR(1),
	descripcion VARCHAR(20) NOT NULL,
	CONSTRAINT pk_genero PRIMARY KEY(cod_genero)
);

CREATE TABLE peliculas(
	num_pelicula VARCHAR(4),
	titulo VARCHAR(30),
	cod_genero VARCHAR(1),
	CONSTRAINT pk_peliculas PRIMARY KEY(num_pelicula),
	CONSTRAINT fk_genero FOREIGN KEY(cod_genero) REFERENCES genero(cod_genero)
);

CREATE TABLE prestamo(
	num_socio VARCHAR(4),
	num_pelicula VARCHAR(4),
	f_prestamo DATETIME,
	f_devolucion DATETIME,
	CONSTRAINT pk_prestamo PRIMARY KEY(num_socio, num_pelicula),
	CONSTRAINT fk_prestamo_socios FOREIGN KEY(num_socio) REFERENCES socios(num_socio),
	CONSTRAINT fk_prestamo_peliculas FOREIGN KEY(num_pelicula) REFERENCES peliculas(num_pelicula)
);


-- Ejercicio 2

-- Tabla socios
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0001", "Sylvia", "Acosta", "Teobaldo Power, 5", "928202617");
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0002", "Javier", "Medina", "Son Simona, 43", "928202617");
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0003", "Carlos", "Marrero", "La Naval, 5", "928202617");
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0004", "Roberto", "Álvarez", "Urb. Los Almendros, 64", "928202617");
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0005", "Lilián", "Moreno", "Gran Canaria, 7", "928202617");
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0006", "Lydia", "de la Cruz", "León y Castillo", "928202617");
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0008", "Antonio", "López", "Talamanca, 23", "928202617");
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0009", "Rosario", "Medina", "Antonio Machado, 20", "928202617");

-- Tabla genero
INSERT INTO genero(cod_genero, descripcion) VALUES("A", "Acción");
INSERT INTO genero(cod_genero, descripcion) VALUES("C", "Comedia");
INSERT INTO genero(cod_genero, descripcion) VALUES("D", "Drama");
INSERT INTO genero(cod_genero, descripcion) VALUES("F", "Ciencia ficción");
INSERT INTO genero(cod_genero, descripcion) VALUES("R", "Romántica");
INSERT INTO genero(cod_genero, descripcion) VALUES("T", "Miedo");

-- Tabla peliculas
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0001", "El misterio del sarcófago", "T");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0002", "Mente criminal", "A");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0003", "Sisí", "R");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0004", "Cadenas de oro", "D");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0005", "Mira quién habla", "C");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0006", "Dos amores y un señor", "C");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0007", "El padre de la novia", "C");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0008", "Ruby Cairo", "D");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0009", "Cementario viviente dos", "T");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0010", "La cara sucia de la ley", "A");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0011", "El señor de los anillos", "R");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0012", "Mi gran boda griega", "C");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0013", "Mi mejor amigo", "C");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0014", "El señor de los anillos", "F");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0015", "Robin Hood", "C");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0016", "Mientras la ley los separe", "C");

-- Tabla prestamo
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0001", "0001", "2009-02-16", "2009-02-20");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0001", "0005", "2009-02-14", "2009-02-15");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0001", "0006", "2009-02-05", "2009-02-11");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0002", "0002", "2009-02-20", "2009-02-23");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0002", "0004", "2009-02-12", "2009-02-15");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0002", "0006", "2009-02-12", "2009-02-15");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0003", "0004", "2009-02-05", "2009-02-11");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0003", "0005", "2009-02-05", "2009-02-11");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0004", "0004", "2009-02-16", "2009-02-20");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0004", "0008", "2009-02-12", "2009-02-15");

-- Tabla socios
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0010", "Néstor", "Toledo", "Ibiza, 29", "915876485");
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0011", "Irene", "Solsona", "Luzemburgo, 35", "918874545");
INSERT INTO socios(num_socio, nombre, apellidos, direccion, telefono) VALUES("0012", "Javier", "Gómez", "Keil, 23", "914579653");

-- Tabla genero
INSERT INTO genero(cod_genero, descripcion) VALUES("B", "Dibujos animados");

-- Tabla peliculas
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0017", "Blancanieves", "B");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0018", "Bambi", "B");
INSERT INTO peliculas(num_pelicula, titulo, cod_genero) VALUES("0019", "La Sirenita", "B");

-- Tabla prestamo
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0010", "0017", "2009-05-05", "2009-05-08");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0010", "0019", "2009-05-05", "2009-05-08");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0011", "0018", "2009-05-06", "2009-05-09");
INSERT INTO prestamo(num_socio, num_pelicula, f_prestamo, f_devolucion) VALUES("0012", "0019", "2009-05-10", "2009-05-13");