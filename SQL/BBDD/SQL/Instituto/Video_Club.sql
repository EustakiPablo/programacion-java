DROP DATABASE Video_Club;
CREATE DATABASE Video_Club;
USE Video_Club;
CREATE TABLE socios(
	num_socio VARCHAR(4),
    nombre VARCHAR(15),
    apellidos VARCHAR(20),
    direccion VARCHAR (30),
    telefono VARCHAR (9) NOT NULL,
    CONSTRAINT pk_socios PRIMARY KEY (num_socio)
);

CREATE TABLE genero(
	cod_genero VARCHAR(1),
    descripcion VARCHAR(15),
    CONSTRAINT pk_genero PRIMARY KEY (cod_genero)
);

CREATE TABLE peliculas(
	num_pelicula VARCHAR(4),
    titulo VARCHAR(30),
    cod_genero VARCHAR(1),
    CONSTRAINT pk_peliculas PRIMARY KEY (num_pelicula),
    CONSTRAINT fk_genero FOREIGN KEY (cod_genero) REFERENCES genero(cod_genero)
);

CREATE TABLE prestamo(
	num_socio VARCHAR(4),
    num_pelicula VARCHAR(4),
    f_prestamo DATETIME,
    f_devolucion DATETIME NOT NULL,
    CONSTRAINT pk_prestamo PRIMARY KEY (num_socio,num_pelicula,f_prestamo),
    CONSTRAINT fk_prestamo_socios FOREIGN KEY (num_socio) REFERENCES socios (num_socio) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_prestamo_peliculas FOREIGN KEY (num_pelicula) REFERENCES peliculas (num_pelicula) ON UPDATE CASCADE ON DELETE CASCADE
);

/*DATOS TABLA socios*/
INSERT INTO socios VALUES ("0001","SYLVIA","ACOSTA","Teobaldo Power,5","928202617");
INSERT INTO socios VALUES ("0002","JAVIER","MEDINA","Sor Simona,43","928228756");
INSERT INTO socios VALUES ("0003","CARLOS","MARRERO","La Naval, 5","928223569");
INSERT INTO socios VALUES ("0004","ROBERTO","ÁLVAREZ","Urb. Los Almendros, 64","928705489");
INSERT INTO socios VALUES ("0005","LILIÁN","MORENO","Gran Canaria, 7","928228359");
INSERT INTO socios VALUES ("0006","LYDIA","DE LA CRUZ","León y Castillo","905252525");
INSERT INTO socios VALUES ("0008","ANTONIO","LÓPEZ","Talamanca, 23","915874896");
INSERT INTO socios VALUES ("0009","ROSARIO","MEDINA","ANTONIO MACHADO, 20","912587463");

/*DATOS TABLA genero*/
INSERT INTO genero VALUES ("A","Acción");
INSERT INTO genero VALUES ("C","Comedia");
INSERT INTO genero VALUES ("D","Drama");
INSERT INTO genero VALUES ("F","Ciencia Ficción");
INSERT INTO genero VALUES ("R","Romántica");
INSERT INTO genero VALUES ("T","Miedo");

/*DATO TABLA peliculas*/
INSERT INTO peliculas VALUES ("0001","El Misterio del Sarcófago","T");
INSERT INTO peliculas VALUES ("0002","Mente Criminal","A");
INSERT INTO peliculas VALUES ("0003","Sisí","R");
INSERT INTO peliculas VALUES ("0004","Cadenas de Oro","D");
INSERT INTO peliculas VALUES ("0005","Mira quien habla","C");
INSERT INTO peliculas VALUES ("0006","Dos amores y un señor","C");
INSERT INTO peliculas VALUES ("0007","El padre de la novia","C");
INSERT INTO peliculas VALUES ("0008","Ruby Cairo","D");
INSERT INTO peliculas VALUES ("0009","Cementerio Viviente dos","T");
INSERT INTO peliculas VALUES ("0010","La cara sucia de la ley","A");
INSERT INTO peliculas VALUES ("0011","el señor de los anillos","R");
INSERT INTO peliculas VALUES ("0012","Mi gran boda griega","C");
INSERT INTO peliculas VALUES ("0013","Mi mejor Amigo","C");
INSERT INTO peliculas VALUES ("0014","El Señor de los Anillos","F");
INSERT INTO peliculas VALUES ("0015","Robin Hood","C");
INSERT INTO peliculas VALUES ("0016","Mientras la ley los separe","C");

/*DATOS TABLA prestamo*/
INSERT INTO prestamo VALUES ("0001","0001","2009/02/16","2009/02/20");
INSERT INTO prestamo VALUES ("0001","0005","2009/02/14","2009/02/15");
INSERT INTO prestamo VALUES ("0001","0006","2009/02/05","2009/02/11");
INSERT INTO prestamo VALUES ("0002","0002","2009/02/20","2009/02/23");
INSERT INTO prestamo VALUES ("0002","0004","2009/02/12","2009/02/15");
INSERT INTO prestamo VALUES ("0002","0006","2009/02/12","2009/02/15");
INSERT INTO prestamo VALUES ("0003","0004","2009/02/05","2009/02/11");
INSERT INTO prestamo VALUES ("0003","0005","2009/02/05","2009/02/11");
INSERT INTO prestamo VALUES ("0004","0004","2009/02/16","2009/02/20");
INSERT INTO prestamo VALUES ("0004","0008","2009/02/12","2009/02/15");
INSERT INTO prestamo VALUES ("0005","0007","2009/02/16","2009/02/20");
INSERT INTO prestamo VALUES ("0009","0005","2009/01/14","2009/01/17");

/*DELETE FROM peliculas WHERE num_pelicula="0001";*/