USE jardineria;
#ejercicio 1)	Devuelve un listado con la ciudad y el teléfono de las oficinas de España. (0,1p)
SELECT ciudad, telefono
FROM oficina
WHERE pais = "españa"
;
#ejercicio 2)	Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas. (0,2p)
SELECT nombre, apellido1, apellido2, puesto
FROM empleado
WHERE puesto != "Representante Ventas"
;
#ejercicio 3)	 Devuelve un listado con el código de pedido, 
#código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo. (0,2p
SELECT codigo_pedido, codigo_cliente,fecha_esperada,fecha_entrega
FROM pedido
WHERE fecha_esperada<fecha_entrega
;
#ejercicio 4)	Devuelve un listado de todos los pedidos que fueron rechazados en 2009. (0,2p)
SELECT *
FROM pedido
WHERE estado = "Rechazado" AND fecha_pedido BETWEEN "2009-01-01" AND "2009-12-31"
;
#ejercicio 5)	Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordena el resultado de mayor a menor. (0,2p)
SELECT *
FROM pago
WHERE forma_pago = "Paypal" AND fecha_pago BETWEEN "2008-01-01" AND "2008-12-31"
ORDER BY total DESC
;
#ejercicio 6)	Devuelve un listado con todas las formas de pago que acepta la empresa, evitando repeticiones. (0,2p)
SELECT forma_pago
FROM pago
GROUP BY forma_pago
;
#ejercicio 7)	Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en 
#stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio. (0,2p)
SELECT *
FROM producto
WHERE gama = "Ornamentales" AND cantidad_en_stock > 100;

#ejercicio 8)	Devuelve un listado con todos los clientes que sean de la ciudad de 
#Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30. (0,2p)
SELECT *
FROM cliente
WHERE ciudad = "Madrid" AND codigo_empleado_rep_ventas = 11 OR codigo_empleado_rep_ventas = 30
;
#ejercicio 9)	¿Cuántos clientes tiene cada país? (0,1p)
SELECT pais, COUNT(codigo_cliente)
FROM cliente
GROUP BY pais
;
#ejercicio 10)	¿Cuál fue el pago medio en el año 2009? (0,1p)
SELECT AVG(total)
FROM pago
WHERE fecha_pago BETWEEN "2009-01-01" AND "2009-12-31"
;
#ejercicio 11)	¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos. (0,2p)
SELECT estado, COUNT(codigo_pedido)
FROM pedido
GROUP BY estado
ORDER BY COUNT(codigo_pedido) DESC
;
#ejercicio 12)	Calcula, en una misma consulta, el precio de venta del producto más caro y del más barato. (0,2p)
SELECT MAX(precio_venta),MIN(precio_venta)
FROM producto
;
#ejercicio 13)	Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos. (0,2p)
SELECT codigo_pedido,SUM(cantidad)
FROM detalle_pedido
GROUP BY codigo_pedido
;
#ejercicio 14)	Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han 
#vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas. (0,2p)
SELECT codigo_producto,SUM(cantidad) 
FROM detalle_pedido 
GROUP BY codigo_producto 
ORDER BY SUM(cantidad) DESC 
LIMIT 20;
/*ejercicio 15)	Muestra la facturación que ha tenido la empresa en toda la historia, indicando la base 
imponible, el IVA y el total facturado. La base imponible se calcula sumando el coste del producto por el 
número de unidades vendidas de la tabla detalle_pedido. El IVA es el 21 % de la base imponible, y el 
total la suma de los dos campos anteriores. (0,5p)*/
SELECT (((cantidad*precio_unidad)*0.21)+(cantidad*precio_unidad))AS "total",((cantidad*precio_unidad)*0.21) AS "IVA" ,(cantidad*precio_unidad) AS "base imponible"
FROM detalle_pedido
;
/*ejercicio 16)	Muestra lo mismo que en la pregunta 15, pero sólo de aquellos productos por los que su código empiece por OR. (0,5p)*/
SELECT (((cantidad*precio_unidad)*0.21)+(cantidad*precio_unidad))AS "total",((cantidad*precio_unidad)*0.21) AS "IVA" ,(cantidad*precio_unidad) AS "base imponible"
FROM detalle_pedido
WHERE codigo_producto LIKE "OR%"
;
/*ejercicio 17)	Devuelve el nombre del cliente con mayor límite de crédito. (0,5p)*/
SELECT nombre_cliente
FROM cliente
WHERE limite_credito IN (SELECT MAX(limite_credito) FROM cliente)
;
/*ejercicio 18)	Indica el nombre del producto que tenga el precio de venta más alto. (0,5p)*/
SELECT nombre
FROM producto
WHERE precio_venta IN (SELECT MAX(precio_venta) FROM producto)
;
/*19)	Muestra los clientes cuyo límite de crédito sea mayor que los pagos que hayan realizado. (0,5p)*/
SELECT *
FROM cliente
WHERE codigo_cliente IN (SELECT cliente.codigo_cliente FROM cliente,pago WHERE cliente.limite_credito>pago.total)
;
/*20)	Devuelve el producto que menos unidades tiene en stock. (0,5p)*/
SELECT *
FROM producto
WHERE cantidad_en_stock = (SELECT MIN(IFNULL(cantidad_en_stock,0)) FROM producto)
;
/*21)	Indica el nombre, apellidos y email de los empleados que están a cargo de Alberto Soria. (0,5p)*/
SELECT nombre,apellido1,apellido2,email
FROM empleado
WHERE codigo_jefe = (SELECT codigo_empleado FROM empleado WHERE nombre = "Alberto" AND apellido1 = "Soria")
;
/*22)	Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago. (0,5p)*/
SELECT *
FRom cliente
WHERE codigo_cliente NOT IN (SELECT codigo_cliente FROM pago)
;
/*23)	Obtener el número de pedido, código de cliente, fecha requerida y 
fecha de entrega de los pedidos entregados con, al menos, dos días de adelanto. (0,2p)*/
SELECT codigo_pedido,codigo_cliente,fecha_esperada,fecha_entrega
FROM pedido
WHERE DATEDIFF(fecha_esperada,fecha_entrega) >=2
;
/*24)	Obtener el total de las cantidades cobradas en cada año. (0,2p)*/
SELECT SUM(total),fecha_pago
FROM pago
GROUP BY fecha_pago
;
/*25)	Obtener todos los pedidos cuyo mes de entrega haya sido distinto del mes esperado para ello. (0,2p)*/
SELECT *
FROM pedido
WHERE MONTH(fecha_entrega)!= MONTH(fecha_esperada)
;
/*26)	Obtener el tiempo transcurrido entre que se recibe un pedido y se entrega. (0,2p)*/
SELECT DATEDIFF(IFNULL(fecha_entrega,0),IFNULL(fecha_pedido,0))
FROM pedido
GROUP BY codigo_pedido
;
/*27)	Obtener el nombre y código de todos los jugadores que tengan más puntos por partido que Pau Gasol en la temporada 05/06. (0,5p)*/
USE nba;
SELECT Nombre,codigo
FROM jugadores
WHERE codigo IN (SELECT jugador FROM estadisticas WHERE Puntos_por_partido>=(SELECT Puntos_por_partido FROM estadisticas WHERE jugador IN (SELECT codigo FROM jugadores WHERE Nombre = "PAU GASOL")AND temporada = "05/06")AND temporada = "05/06")
;
/*28)	Obtener los códigos de los jugadores que hayan cogido más rebotes por partido en la temporada 
04/05 que la media de los que han capturado los jugadores de los Chicago Bulls en esa temporada. (0,5p)*/
SELECT codigo
FROM jugadores
WHERE codigo IN (SELECT jugador FROM estadisticas WHERE Rebotes_por_partido>=(SELECT AVG(Rebotes_por_partido) FROM estadisticas WHERE jugador IN (SELECT codigo FROM jugadores WHERE Nombre_equipo = "Bulls")AND temporada="04/05") AND temporada="04/05")
;
/*29)	Obtener los códigos de los jugadores que hayan dado menos asistencias por partido en la temporada 03/04 que las 
que ha dado el mejor en ese aspecto de los jugadores de los Raptors en esa temporada. (0,5p)*/
SELECT codigo
FROM jugadores
WHERE codigo IN (SELECT jugador FROM estadisticas WHERE temporada = "03/04" AND Asistencias_por_partido < (SELECT MAX(Asistencias_por_partido) FROM estadisticas WHERE jugador IN (SELECT codigo FROM jugadores WHERE Nombre_equipo = "RAPTORS") AND temporada = "03/04"))
;
/*30)	Obtener los nombres y procedencia de todos los jugadores cuya procedencia contenga la sílaba “sh” en cualquier posición. (0,5p)*/
SELECT nombre,procedencia
FROM jugadores
WHERE procedencia LIKE "%sh%"
;
/*31)	Obtener los nombres de los jugadores y de los equipos en los que juegan que 
cumplan que el nombre del jugador comienza por “J” y la tercera letra del equipo es una “O” (0,2p)*/
SELECT nombre,Nombre_equipo
FROM jugadores
WHERE nombre LIKE "J%" AND Nombre_equipo LIKE "__O%"
;
/*32)	Obtener la conferencia donde juega el jugador más alto de la nba. (0,5p)*/
SELECT conferencia
FROM equipos
WHERE Nombre = (SELECT Nombre_equipo FROM jugadores j1 WHERE altura = (SELECT MAX(altura) FROM jugadores j2))
;