USE nba;
#ejercicio 1 Obtener el nombre de los equipos de la NBA 
SELECT Nombre
FROM equipos
;
#ejercicio 2 Obtener el nombre de los jugadores franceses que juegan en la NBA 
SELECT Nombre
FROM jugadores
WHERE Procedencia = "France"
;
#ejercicio 3 Obtener la altura del jugador más bajo de la NBA
SELECT MIN(Altura)
FROM jugadores
;
#ejercicio 4 Obtener el nombre de los jugadores de los Lakers
SELECT Nombre
FROM jugadores
WHERE Nombre_equipo ="Lakers"
; 
/*ejercicio 5 Obtener cuántos equipos tiene cada conferencia de la NBA
 (se han de conseguir dos columnas, una con el número de equipos y
 otra con la conferencia a la que pertenece ese número o al revés) */
 
SELECT COUNT(Nombre),Conferencia
FROM equipos
GROUP BY Conferencia
;
#ejercicio 6 Obtener el nombre y el peso del jugador más pesado de toda la NBA
SELECT Nombre,Peso
FROM jugadores
ORDER BY Peso DESC
LIMIT 1
;
/*ejercicio 7 Obtener cuánto mide el jugador más bajo de cada equipo NBA
 (se han de conseguir dos columnas, una con el nombre del equipo y otra con la altura
 de su jugador más bajo) */
SELECT Nombre_equipo,MIN(Altura)
FROM jugadores
GROUP BY Nombre_equipo
;
#ejercicio 8 Obtener el peso medio de los jugadores de los Celtics 
SELECT AVG(Peso)
FROM jugadores
WHERE Nombre_equipo = "Celtics"
;
#ejercicio 9 Obtener la altura media de los jugadores españoles y alemanes
#de la NBA (se han de conseguir dos columnas como con otras consultas
SELECT Procedencia,AVG(Altura)
FROM jugadores
WHERE Procedencia = "Germany" OR Procedencia = "Spain"
GROUP BY Procedencia
;
#ejercicio 10 Obtener los nombres y procedencia de todos los jugadores 
#cuya procedencia contenga la sílaba “pa” en cualquier posición 
SELECT Nombre,Procedencia
FROM jugadores
WHERE Procedencia LIKE "%pa%"
;
#ejercicio 11 Obtener los nombres y procedencia de todos los jugadores 
#cuya procedencia contenga los caracteres “pa” en cualquier posición
SELECT Nombre,Procedencia
FROM jugadores
WHERE Procedencia LIKE "%p%a%"
;
#ejercicio 12 Obtener la conferencia donde juega el jugador más ligero de la NBA
SELECT Conferencia
FROM equipos
WHERE Nombre = (SELECT Nombre_equipo FROM jugadores ORDER BY Peso LIMIT 1)
;
#ejercicio 13 Obtener el nombre de todos los equipos que jueguen en Los Ángeles. 
SELECT nombre
FROM equipos
WHERE Ciudad = "Los Ángeles"
;
#ejercicio 14 Obtener los puntos por partido del jugador Kobe Bryant 
#por temporada, se deberán obtener tres columnas: temporada, código de jugador y puntos por partido
SELECT temporada, jugador, Puntos_por_partido
FROM estadisticas
WHERE jugador = (SELECT codigo FROM jugadores WHERE Nombre = "Kobe Bryant")
;
#ejercicio 15 Obtener los 10 últimos equipos de la NBA por orden alfabético. 
SELECT Nombre
FROM equipos
ORDER BY Nombre DESC
LIMIT 10
;
#ejercicio 16 Obtener los nombres de la plantilla de los Warriors ordenada alfabéticamente.
SELECT Nombre
FROM jugadores
WHERE Nombre_equipo = "Warriors"
ORDER BY Nombre ASC
;
#ejercicio 17 Obtener el nombre y código de todos los jugadores que tengan 
#más puntos por partido que Kobe Bryant en la temporada 05/06.  
SELECT Nombre,codigo
FROM jugadores
WHERE codigo IN (SELECT jugador FROM estadisticas WHERE Puntos_por_partido>(
SELECT Puntos_por_partido FROM estadisticas WHERE jugador = (
SELECT codigo FROM jugadores WHERE Nombre = "Kobe Bryant") AND temporada = "05/06"))
;
#ejercicio 18 Obtener los códigos de los jugadores que hayan cogido más rebotes 
#por partido en la temporada 03/04 que la media de los que han capturado los 
#jugadores de los Utah Jazz (Jazz) en esa temporada. 
SELECT codigo
FROM jugadores
WHERE codigo IN (SELECT jugador FROM estadisticas WHERE Rebotes_por_partido > (SELECT AVG(Rebotes_por_partido) FROM estadisticas WHERE temporada = "03/04" AND jugador IN (SELECT codigo FROM jugadores WHERE Nombre_equipo = "Jazz")) AND temporada = "03/04")
;
#ejercicio 19 Obtener los códigos de los jugadores que hayan dado menos 
#asistencias por partido en la temporada 03/04 que las que ha dado el 
#mejor en ese aspecto de los jugadores de los Knicks en esa temporada. Asistencias_por_partido
SELECT codigo
FROM jugadores j1
WHERE codigo IN (
SELECT jugador FROM estadisticas e1 WHERE Asistencias_por_partido<(
SELECT Asistencias_por_partido FROM estadisticas WHERE jugador IN (
SELECT codigo FROM jugadores WHERE Nombre_equipo="Knicks") ORDER BY Asistencias_por_partido DESC LIMIT 1)
 AND temporada = "03/04")
;
#ejercicio 20 Obtener los nombres de los jugadores y de los equipos 
#en los que juegan que cumplan que el nombre del jugador comienza por 
#“S” y la segunda letra del equipo es una “A” 
SELECT Nombre,Nombre_equipo
FROM jugadores
WHERE Nombre LIKE "S%" AND Nombre_equipo LIKE "_A%"
;