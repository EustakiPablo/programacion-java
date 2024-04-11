USE video_club;

#Ejercicio 1
SELECT *
FROM socios
WHERE nombre LIKE '_É%'
;

#Ejercicio 2

SELECT *
FROM socios 
WHERE nombre LIKE '%R%'
;

#Ejercicio 3

SELECT *
FROM socios
WHERE nombre LIKE 'L%' OR apellidos LIKE '%L%'
;

#Ejercicio 4

SELECT CONCAT(nombre," ",apellidos) AS "Nombre Completo"
FROM socios
;

#Ejercicio 5
SELECT *
FROM peliculas
WHERE cod_genero = "A"
;

#Ejercicio 6
/*UPDATE peliculas SET cod_genero = "T" WHERE cod_genero = "M"*/
SELECT *
FROM peliculas
WHERE cod_genero = "A" OR cod_genero = "T"
;

#Ejercicio 7
UPDATE genero SET cod_genero = "M" WHERE cod_genero = "T";
/*UPDATE articulos SET referencia_articulo="01-LANA90/10" WHERE referencia_articulo="01-LANA";
ALTER TABLE peliculas DROP CONSTRAINT fk_genero;
ALTER TABLE peliculas ADD CONSTRAINT fk_genero FOREIGN KEY (cod_genero) REFERENCES genero(cod_genero) ON UPDATE CASCADE ON DELETE CASCADE;*/
/*ALTER TABLE peliculas DROP CONSTRAINT fk_genero;
UPDATE peliculas SET cod_genero = "T" WHERE cod_genero = "M";
SET FOREIGN_KEY_CHECKS = 0;
ALTER TABLE peliculas ADD CONSTRAINT fk_genero FOREIGN KEY (cod_genero) REFERENCES genero (cod_genero) ON UPDATE CASCADE ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS = 1;*/

#Ejercicio 8
UPDATE prestamo SET f_devolucion = "2009-02-12" WHERE f_devolucion = "2009-02-11";
SELECT DATE_FORMAT(f_devolucion,'%W, %e de %M de %Y')
FROM prestamo
WHERE f_devolucion = "2009-02-12"
;
#Ejercicio 9
SELECT DATEDIFF(f_devolucion,f_prestamo) AS "Días de devolución"
FROM prestamo
;
#Ejercicio 10
SELECT DATEDIFF(f_devolucion,f_prestamo) AS "Días de devolución"
FROM prestamo
LIMIT 5
;
#Ejercicio 11
SELECT DATEDIFF(f_devolucion,f_prestamo) AS "Días de devolución"
FROM prestamo
LIMIT 1,4
;

#Ejercicio 12 FECHA PRESTAMO
SELECT DATEDIFF(f_devolucion,f_prestamo) AS "Días de devolución"
FROM prestamo
ORDER BY f_prestamo
;

#Ejercicio 13
SELECT DATEDIFF(f_devolucion,f_prestamo) AS "Días de devolución"
FROM prestamo
ORDER BY f_prestamo DESC
;
#Ejercicio 14
SELECT DATEDIFF(f_devolucion,f_prestamo)*3.25 AS "Precio a pagar"
FROM prestamo
;
#Ejercicio 15
SELECT DATE_FORMAT(f_prestamo,'%W, %e de %M de %Y'),DATE_FORMAT(f_devolucion,'%e de %b de %y')
FROM prestamo
;
#Ejercicio 16
SELECT *
FROM socios
WHERE LENGTH(nombre)>6
;
#Ejercicio 17
SELECT *
FROM socios
WHERE LENGTH(nombre)>6 AND LENGTH(apellidos)<=5
;
#Ejercicio 18
SELECT UPPER(nombre),LOWER(apellidos)
FROM socios
;
#Ejercicio 19
SELECT CONCAT(SUBSTR(titulo,1,4),"**",CURDATE())
FROM peliculas
;
#Ejercicio 20
SELECT REPLACE(direccion,"L","#")
FROM socios
;
#Ejercicio 21
SELECT DATEDIFF(CURDATE(),f_prestamo) AS "Días de Préstamo"
FROM prestamo
;
#Ejercicio 22
SELECT DATEDIFF(CURDATE(),f_prestamo)/30 AS "Meses de Préstamo"
FROM prestamo
;