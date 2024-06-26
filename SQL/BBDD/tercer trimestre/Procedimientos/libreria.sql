DROP DATABASE IF EXISTS libreria;
CREATE DATABASE IF NOT EXISTS libreria;
USE libreria;
/*CREATE TABLE libros(
	isbn VARCHAR(10) PRIMARY KEY,
    autor VARCHAR(20),
    titulo VARCHAR(20),
    editorial VARCHAR(20),
    precio NUMERIC (6,2)
);
INSERT INTO libros VALUES ("123456789","Autor1","Titulo1","Editorial1",15.99);
INSERT INTO libros VALUES ("123456789","Autor1","Titulo1","Editorial1",15.99);*/

drop table if exists libros;
 create table libros(
  codigo int auto_increment,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo) 
 );

 insert into libros (titulo,autor,editorial,precio) 
  values ('Uno','Richard Bach','Planeta',15);
 insert into libros (titulo,autor,editorial,precio) 
  values ('Ilusiones','Richard Bach','Planeta',12);
 insert into libros (titulo,autor,editorial,precio) 
  values ('El aleph','Borges','Emece',25);
 insert into libros (titulo,autor,editorial,precio) 
  values ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 insert into libros (titulo,autor,editorial,precio) 
  values ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 insert into libros (titulo,autor,editorial,precio) 
  values ('Puente al infinito','Bach Richard','Sudamericana',14);
 insert into libros (titulo,autor,editorial,precio) 
  values ('Antología','J. L. Borges','Paidos',24);
 insert into libros (titulo,autor,editorial,precio) 
  values ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 insert into libros (titulo,autor,editorial,precio) 
  values ('Cervantes y el quijote','Borges- Casares','Planeta',34);

DROP PROCEDURE IF EXISTS pa_libros_autor;
DELIMITER //
CREATE PROCEDURE pa_libros_autor(IN p_autor VARCHAR(30))
	BEGIN
		SELECT titulo,editorial,precio
        FROM libros
        WHERE autor=p_autor;
    END //
DELIMITER ;
CALL pa_libros_autor("Richard Bach");

drop procedure if exists pa_libros_autor_editorial;

 delimiter //
 create procedure pa_libros_autor_editorial(
   in p_autor varchar(30),
   in p_editorial varchar(20))
 begin
   select titulo, precio
     from libros
     where autor= p_autor and
           editorial=p_editorial;
 end //
 delimiter ;
 
 call pa_libros_autor_editorial('Richard Bach','Planeta');

 call pa_libros_autor_editorial('Borges','Emece');
