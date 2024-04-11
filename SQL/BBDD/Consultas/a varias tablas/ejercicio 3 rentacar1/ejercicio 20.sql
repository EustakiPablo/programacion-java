USE rentacar;
/*1. Obtener los clientes que hayan hecho alquileres en enero y febrero.*/
SELECT clientes.*
FROM alquileres,clientes
WHERE MONTH(alquileres.FechaInicio) = "01" AND MONTH(alquileres.FechaInicio) = "02"
;
/*2. Obtener los clientes que hayan alquilado más de un vehículo. 8 filas*/
SELECT clientes.ID_Cliente,COUNT(clientes.ID_Cliente)
FROM clientes,alquileres
WHERE clientes.ID_Cliente = alquileres.ID_Cliente
GROUP BY clientes.ID_Cliente
HAVING COUNT(clientes.ID_Cliente)>1
;
/*3. Obtener la duración media de los alquileres en horas de coches.*/
SELECT ROUND(AVG(UNIX_TIMESTAMP(CONCAT(fechaFin," ",horaFin))-UNIX_TIMESTAMP(CONCAT(fechaInicio," ",horaInicio)))/3600,2)
FROM alquileres a JOIN vehiculos v
ON a.ID_Vehiculo = v.ID_Vehiculo
WHERE v.TipoCarnet = "coche"
;
/*
SELECT ROUND(AVG(UNIX_TIMESTAMP(CONCAT(FechaFin," ",HoraFin)-UNIX_TIMESTAMP(CONCAT(FechaInicio," ",HoraInicio)))/3600),2)
FROM alquileres,vehiculos
WHERE vehiculos.ID_Vehiculo = alquileres.ID_Vehiculo AND vehiculos.TipoCarnet = "Coche"
;*/
/*4. Obtener los minutos totales de alquiler del conjunto de las motos 94mil.*/

SELECT ROUND(SUM(UNIX_TIMESTAMP(CONCAT(fechaFin," ",horaFin))-UNIX_TIMESTAMP(CONCAT(fechaInicio," ",horaInicio)))/60,2)
FROM alquileres a JOIN vehiculos v
ON a.ID_Vehiculo = v.ID_Vehiculo
WHERE v.TipoCarnet = "moto"
;
/*5. Obtener cuál fue el vehículo más alquilado.*/
SELECT vehiculos.TipoCarnet,COUNT(alquileres.ID_Vehiculo)
FROM alquileres,vehiculos
WHERE vehiculos.ID_Vehiculo = alquileres.ID_Vehiculo
GROUP BY vehiculos.TipoCarnet
HAVING MAX(alquileres.ID_Vehiculo)
ORDER BY COUNT(alquileres.ID_Vehiculo) DESC
;
/*6. Obtener cuánto duró el alquiler más corto.*/
SELECT ROUND(MIN(UNIX_TIMESTAMP(CONCAT(fechaFin," ",horaFin))-UNIX_TIMESTAMP(CONCAT(fechaInicio," ",horaInicio)))/3600,2)
FROM alquileres
;
/*7. Obtener cuánto duró el alquiler más largo*/
SELECT ROUND(MAX(UNIX_TIMESTAMP(CONCAT(fechaFin," ",horaFin))-UNIX_TIMESTAMP(CONCAT(fechaInicio," ",horaInicio)))/3600,2)
FROM alquileres
;
/*8. Obtener un listado ordenado de mayor a menor de los clientes que más hayan 
usado nuestros servicios por número de minutos.
*/
SELECT clientes.ID_Cliente,clientes.Nombre,SUM(UNIX_TIMESTAMP(CONCAT(alquileres.fechaFin," ",alquileres.horaFin))-UNIX_TIMESTAMP(CONCAT(alquileres.fechaInicio," ",alquileres.horaInicio)))/60
FROM clientes,alquileres
WHERE alquileres.ID_Cliente = clientes.ID_Cliente
GROUP BY clientes.ID_Cliente
ORDER BY SUM(UNIX_TIMESTAMP(CONCAT(alquileres.fechaFin," ",alquileres.horaFin))-UNIX_TIMESTAMP(CONCAT(alquileres.fechaInicio," ",alquileres.horaInicio)))/60 DESC
;
/*9. Obtener los clientes que hayan alquilado furgonetas más de 60 minutos.*/
SELECT clientes.ID_Cliente,clientes.Nombre,SUM(UNIX_TIMESTAMP(CONCAT(alquileres.fechaFin," ",alquileres.horaFin))-UNIX_TIMESTAMP(CONCAT(alquileres.fechaInicio," ",alquileres.horaInicio)))/60
FROM clientes,alquileres,vehiculos
WHERE clientes.ID_Cliente = alquileres.ID_Cliente AND vehiculos.TipoCarnet = "furgoneta" AND vehiculos.ID_Vehiculo = alquileres.ID_Vehiculo
GROUP BY clientes.ID_Cliente
HAVING SUM(UNIX_TIMESTAMP(CONCAT(alquileres.fechaFin," ",alquileres.horaFin))-UNIX_TIMESTAMP(CONCAT(alquileres.fechaInicio," ",alquileres.horaInicio)))/60 > 60
;
/*10. Obtener los clientes que hayan alquilado coches menos de 60 minutos.*/
SELECT clientes.ID_Cliente,clientes.Nombre,SUM(UNIX_TIMESTAMP(CONCAT(alquileres.fechaFin," ",alquileres.horaFin))-UNIX_TIMESTAMP(CONCAT(alquileres.fechaInicio," ",alquileres.horaInicio)))/60
FROM clientes,alquileres,vehiculos
WHERE clientes.ID_Cliente = alquileres.ID_Cliente AND vehiculos.TipoCarnet = "coche" AND vehiculos.ID_Vehiculo = alquileres.ID_Vehiculo
GROUP BY clientes.ID_Cliente
HAVING SUM(UNIX_TIMESTAMP(CONCAT(alquileres.fechaFin," ",alquileres.horaFin))-UNIX_TIMESTAMP(CONCAT(alquileres.fechaInicio," ",alquileres.horaInicio)))/60 < 60
;
/*11. Obtener todos los alquileres cuyo día de finalización haya sido distinto del día
inicio.
*/
SELECT *
FROM alquileres
WHERE DATEDIFF(FechaFin,FechaInicio)>0
;
/*12. Obtener todos los alquileres comenzados antes de las 10:00 20rows*/
SELECT *
FROM alquileres
WHERE HoraInicio < "10:00:00"
;