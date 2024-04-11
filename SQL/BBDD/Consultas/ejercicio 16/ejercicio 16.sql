
DROP DATABASE CICLISTAS;
CREATE DATABASE CICLISTAS;
USE CICLISTAS;

create table ciclista(
  dorsal int,
  nombre varchar(50),
  edad int,
  nomeq varchar(20));

create table equipo(
  nomeq varchar(20),
  director varchar(50));

create table llevar(
  dorsal int,
  netapa int,
  codigo varchar(3));

create table etapa(
  netapa int,
  km     int,
  salida varchar(20),
  llegada varchar(20),
  dorsal int);

create table puerto(
  nompuerto varchar(20),
  altura int,
  categoria varchar(1),
  pendiente int,
  netapa int,
  dorsal int);

create table maillot(
  codigo varchar(3),
  tipo   varchar(20),
  color varchar(20),
  premio int);


insert into ciclista values(1,'Miguel Indurain',21,'Banesto');
insert into ciclista values(2,'Pedro Delgado',29,'Banesto');
insert into ciclista values(3,'Alex Zulle',20,'Navigare');
insert into ciclista values(4,'Alessio Di Basco',30,'TVM');
insert into ciclista values(5,'Armand',17,'Amore Vita');
insert into ciclista values(8,'Jean Van Poppel',24,'Bresciali-Refin');
insert into ciclista values(9,'Maximo Podel',17,'Telecom');
insert into ciclista values(10,'Mario Cipollini',31,'Carrera');
insert into ciclista values(11,'Eddy Seigneur',20,'Amore Vita');
insert into ciclista values(12,'Alessio Di Basco',34,'Bresciali-Refin');
insert into ciclista values(13,'Gianni Bugno',24,'Gatorade');
insert into ciclista values(15,'Jesus Montoya',25,'Amore Vita');
insert into ciclista values(16,'Dimitri Konishev',27,'Amore Vita');
insert into ciclista values(17,'Bruno Lealli',30,'Amore Vita');
insert into ciclista values(20,'Alfonso Gutierrez',27,'Navigare');
insert into ciclista values(22,'Giorgio Furlan',22,'Kelme');
insert into ciclista values(26,'Mikel Zarrabeitia',30,'Carrera');
insert into ciclista values(27,'Laurent Jalabert',22,'Banesto');
insert into ciclista values(30,'Melchor Mauri',26,'Mapei-Clas');
insert into ciclista values(31,'Per Pedersen',33,'Banesto');
insert into ciclista values(32,'Tony Rominger',31,'Kelme');
insert into ciclista values(33,'Stefenao della Sveitia',26,'Amore Vita');
insert into ciclista values(34,'Clauido Chiapucci',23,'Amore Vita');
insert into ciclista values(35,'Gian Mateo Faluca',34,'TVM');

insert into equipo values('Amore Vita','Ricardo Padacci');
insert into equipo values('Banesto','Miguel Echevarria');
insert into equipo values('Bresciali-Refin','Pietro Armani');
insert into equipo values('Carrera','Luigi Petroni');
insert into equipo values('Gatorade','Gian Luca Pacceli');
insert into equipo values('Kelme','Alvaro Pino');
insert into equipo values('Mapei-Clas','Juan FernÃ¡ndez');
insert into equipo values('Navigare','Lorenzo Sciacci');
insert into equipo values('Telecom','Morgan Reikacrd');
insert into equipo values('TVM','Steevens Henk');

insert into llevar values(1,3,'MGE');
insert into llevar values(1,4,'MGE');
insert into llevar values(2,2,'MGE');
insert into llevar values(3,1,'MGE');
insert into llevar values(3,1,'MMV');
insert into llevar values(3,4,'MRE');
insert into llevar values(4,1,'MMO');

insert into etapa values(1,35,'Valladolid','Avila',1);
insert into etapa values(2,70,'Salamanca','Zamora',2);
insert into etapa values(3,150,'Zamora','Almendralejo',1);
insert into etapa values(4,330,'Cordoba','Granada',1);
insert into etapa values(5,150,'Granada','Almeria',3);

insert into puerto values('p1',2489,'1',34,2,3);
insert into puerto values('p2',2789,'1',44,4,3);
insert into puerto values('Puerto F',2500,'E',17,4,2);
insert into puerto values('Puerto fff',2500,'E',17,4,2);
insert into puerto values('Puerto nuevo1',2500,'a',17,4,1);
insert into puerto values('Puerto otro',2500,'E',17,4,1);
insert into puerto values('Puerto1',2500,'E',23,1,2);

insert into maillot values('MGE','General','Amarillo',1000000);
insert into maillot values('MMO','Montaña','Blanco y rojo',500000);
insert into maillot values('MMS','Mas sufrido','Estrellitas rojas',400000);
insert into maillot values('MMV','Metas volantes','Rojo',400000);
insert into maillot values('MRE','Regularidad','Verde',300000);
insert into maillot values('MSE','Sprint especial','Rosa',300000);



USE ciclistas;
#ejercicio 1 Obtener el código, el tipo, el color y el premio de todos los maillots que hay.
SELECT *
FROM maillot
;
#ejercicio 2 Obtener el dorsal y el nombre de los ciclistas cuya edad sea menor o igual que 25 años.
SELECT dorsal,nombre
FROM ciclista
WHERE edad <=25
;
#ejercicio 3 Obtener el nombre y la altura de todos los puertos de categoría ʻEʼ (Especial).
SELECT nompuerto,altura
FROM puerto
WHERE categoria = "E"
;
#ejercicio 4 Obtener el valor del atributo netapa de aquellas etapas con salida y llegada en la misma ciudad.
SELECT netapa
FROM etapa
WHERE salida = llegada
;
#ejercicio 5 ¿Cuántos ciclistas hay?
SELECT COUNT(dorsal)
FROM ciclista
;
#ejercicio 6 ¿Cuántos ciclistas hay con edad superior a 25 años?
SELECT COUNT(dorsal)
FROM ciclista
WHERE edad >25
;
#ejercicio 7 ¿Cuántos equipos hay?
SELECT COUNT(nomeq)
FROM equipo
;
#ejercicio 8 Obtener la media de edad de los ciclistas.
SELECT AVG(edad)
FROM ciclista
;
#ejercicio 9 Obtener la altura mínima y máxima de los puertos de montaña.
SELECT MAX(altura),MIN(altura)
FROM puerto
;
#ejercicio 10 Obtener el nombre de cada ciclista junto con el nombre del equipo al que pertenece
SELECT nombre,nomeq
FROM ciclista
;
#ejercicio 11 Obtener el nombre de los ciclistas que sean de Banesto.
SELECT nombre
FROM ciclista
WHERE nomeq = "Banesto"
;
#ejercicio 12 ¿Cuántos ciclistas pertenecen al equipo Amore Vita?
SELECT COUNT(dorsal)
FROM ciclista
WHERE nomeq="Amore Vita"
;
#ejercicio 13 Edad media de los ciclistas del equipo TVM.
SELECT AVG(edad)
FROM ciclista
WHERE nomeq="TVM"
;
#ejercicio 14 Nombre de los ciclistas que pertenezcan al mismo equipo que Miguel Indurain
SELECT nombre
FROM ciclista
WHERE nomeq = (SELECT nomeq FROM ciclista WHERE nombre = "Miguel Indurain")
;
#ejercicio 15 Nombre de los ciclistas que han ganado alguna etapa.
SELECT nombre
FROM ciclista
WHERE dorsal IN (SELECT dorsal FROM etapa)
;
#ejercicio 16 Nombre de los ciclistas que han llevado el maillot General.
SELECT nombre
FROM ciclista
WHERE dorsal IN (SELECT dorsal FROM llevar WHERE codigo = (SELECT codigo FROM maillot WHERE tipo = "General"))
;
#ejercicio 17 Obtener el nombre del ciclista más joven
SELECT nombre
FROM ciclista c1
WHERE edad = (SELECT MIN(edad) FROM ciclista)
;
#ejercicio 18 Obtener el número de ciclistas de cada equipo.
SELECT COUNT(dorsal),nomeq
FROM ciclista
GROUP BY nomeq
;
#ejercicio 19 Obtener el nombre de los equipos que tengan más de 5 ciclistas.
SELECT nomeq
FROM equipo
WHERE nomeq IN (SELECT nomeq FROM ciclista GROUP BY nomeq HAVING COUNT(DORSAL)>5)
;
#ejercicio 20 Obtener el número de puertos que ha ganado cada ciclista.
SELECT COUNT(nompuerto),dorsal
FROM puerto
GROUP BY dorsal
;
#ejercicio 21 Obtener el nombre de los ciclistas que han ganado más de un puerto.

#ejercicio 22 Obtener el nombre y el director de los equipos a los que pertenezca algún ciclista mayor de 33 años.
SELECT nomeq,director
FROM equipo
WHERE nomeq IN (SELECT nomeq FROM ciclista WHERE edad>33)
;
#ejercicio 23 Nombre de los ciclistas que no pertenezcan a Kelme
SELECT nombre
FROM ciclista
WHERE nomeq != "Kelme"
;
#ejercicio 24 Nombre de los ciclistas que no hayan ganado ninguna etapa.
SELECT nombre
FROM ciclista
WHERE dorsal NOT IN (SELECT dorsal FROM etapa)
;
#ejercicio 25 Nombre de los ciclistas que no hayan ganado ningún puerto de montaña.
SELECT nombre
FROM ciclista
WHERE dorsal NOT IN (SELECT dorsal FROM puerto)
;
#ejercicio 26 Nombre de los ciclistas que hayan ganado más de un puerto de montaña.
SELECT nombre
FROM ciclista
WHERE dorsal IN (SELECT dorsal FROM puerto GROUP BY dorsal HAVING COUNT(dorsal)>1)
;
#ejercicio 27 ¿Qué ciclistas han llevado el mismo maillot que Miguel Indurain?
SELECT *
FROM ciclista
WHERE dorsal IN (
				SELECT dorsal FROM maillot WHERE codigo IN (
				SELECT codigo FROM llevar WHERE dorsal = (
				SELECT dorsal FROM ciclista WHERE nombre = "Miguel Indurain")))
;
#ejercicio 28 De cada equipo obtener la edad media, la máxima edad y la mínima edad.
SELECT AVG(edad),MAX(edad),MIN(edad),nomeq
FROM ciclista
GROUP BY nomeq
;
#ejercicio 29 Nombre de aquellos ciclistas que tengan 
#una edad entre 25 y 30 años y que no pertenezcan a los equipos Kelme y Banesto.
SELECT nombre
FROM ciclista
WHERE edad BETWEEN 25 AND 30 AND nomeq NOT IN ("Kelne","Banesto")
;
#ejercicio 30 Nombre de los ciclistas que han ganado la etapa que comienza en Zamora.
SELECT nombre
FROM ciclista
WHERE dorsal IN (SELECT dorsal FROM etapa WHERE salida ="Zamora")
;
#ejercicio 31 Obtén el nombre y la categoría de los puertos ganados por ciclistas del equipo ʻBanestoʼ.
SELECT nompuerto,categoria
FROM puerto
WHERE dorsal IN (SELECT dorsal FROM ciclista WHERE nomeq = "Banesto")
;
#ejercicio 32 Obtener el nombre de cada puerto indicando el número (netapa) y los kilómetros de la etapa en la que se encuentra el puerto.
/*De momento nada*/

#ejercicio 33 Obtener el nombre de los ciclistas con el color de cada maillot que hayan llevado.

#Se pueden hacer 36,37,38,39,41,43,44,49,50,53
#ejercicio 36 Obtener el valor del atributo netapa y la ciudad de salida de 
#aquellas etapas que no tengan puertos de montaña.Obtener el valor del 
#atributo netapa y la ciudad de salida de aquellas etapas que no tengan puertos de montaña.
SELECT netapa,salida
FROM etapa
WHERE netapa NOT IN (SELECT netapa FROM puerto)
;
#ejercicio 37 Obtener la edad media de los ciclistas que han ganado alguna etapa.
SELECT AVG(edad)
FROM ciclista
WHERE dorsal IN (SELECT dorsal FROM puerto)
;
#ejercicio 38 Selecciona el nombre de los puertos con una altura superior a la altura media de todos los puertos.
SELECT nompuerto
FROM puerto p1
WHERE altura>(SELECT AVG(altura) FROM puerto)
;
#ejercicio 39 Obtener el nombre de la ciudad de salida y de llegada de las etapas donde estén los puertos con mayor pendiente.
SELECT salida,llegada
FROM etapa e1
WHERE netapa IN (SELECT netapa FROM puerto p1 WHERE pendiente = (SELECT MAX(pendiente) FROM puerto))
;
#ejercicio 43 Obtener el valor del atributo netapa de aquellas etapas 
#tales que todos los puertos que están en ellas tienen más de 700 metros de altura.
SELECT netapa
FROM etapa
WHERE netapa IN (SELECT netapa FROM puerto WHERE altura >700)
;
#ejercicio 44 Obtener el dorsal y el nombre de los ciclistas tales 
#que todas las etapas que han ganado tienen más de 170 km (es decir que sólo han ganado etapas de más de 170 km).
SELECT dorsal,nombre
FROM ciclista
WHERE dorsal IN (SELECT dorsal FROM etapa WHERE km > 170)
;
#ejercicio 49 Obtener el valor del atributo netapa de aquellas etapas que tienen puertos de montaña indicando cuántos tiene.
SELECT netapa,COUNT(netapa)
FROM puerto
GROUP BY netapa
;
#ejercicio 50 Obtener el nombre de todos los equipos indicando cuántos ciclistas tiene cada uno.
SELECT nomeq,COUNT(dorsal)
FROM ciclista
GROUP BY nomeq
;
#ejercicio 53 Obtener el nombre de los equipos y la edad media 
#de sus ciclistas de aquellos equipos que tengan la media de edad máxima de todos los equipos.
SELECT nomeq,AVG(edad)
FROM ciclista c1
WHERE nomeq IN (SELECT nomeq FROM ciclista c2 GROUP BY nomeq HAVING AVG(edad)>=(SELECT AVG(edad) FROM ciclista c3))
GROUP BY nomeq
;