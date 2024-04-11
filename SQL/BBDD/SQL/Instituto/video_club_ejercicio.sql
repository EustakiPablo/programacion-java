USE video_club;
/*Cristian Falcon*/
/*Ejercicio 1*/
INSERT INTO socios VALUES (0010,"NÉSTOR","TOLEDO","IBIZA, 29","91587685");
INSERT INTO socios VALUES (0011,"IRENE","SOLSONA","LUXEMBURGO, 35","978874545");
INSERT INTO socios VALUES (0012,"JAVIER","GÓMEZ","KIEL,23","914579653");

INSERT INTO genero VALUES ("B","Dibujo Animado");

INSERT INTO peliculas VALUES (0017,"Blancanieves","B");
INSERT INTO peliculas VALUES (0018,"Bambi","B");
INSERT INTO peliculas VALUES (0019,"La Sirenita","B");

INSERT INTO prestamo VALUES (0010,0017,"2009-05-05","2009-05-08");
INSERT INTO prestamo VALUES (0010,0019,"2009-05-05","2009-05-08");
INSERT INTO prestamo VALUES (0011,0018,"2009-05-06","2009-05-09");
INSERT INTO prestamo VALUES (0012,0019,"2009-05-10","2009-05-13");

/*EJERCICIO 2*/
UPDATE prestamo SET f_prestamo="2009-05-04" WHERE f_prestamo="2009-05-05";

/*EJERCICIO 3*/

UPDATE peliculas SET titulo = "Blancanieves y los 7 enanitos"
WHERE num_pelicula = 0017;

/*EJERCICIO 4*/

ALTER TABLE peliculas DROP CONSTRAINT fk_genero;
ALTER TABLE peliculas ADD CONSTRAINT fk_genero FOREIGN KEY (cod_genero) REFERENCES genero(cod_genero) ON UPDATE CASCADE ON DELETE CASCADE;

/*EJERCICIO 5*/

UPDATE genero SET cod_genero="U" WHERE cod_genero="B";
SELECT * FROM video_club.peliculas;
/*Han cambiado el código de todas las peliculas que tenian "B" por "U"*/

/*EJERCICIO 6*/

DELETE FROM peliculas WHERE num_pelicula = 0019;
SELECT * FROM pelculas;
SELECT * FROM prestamo;