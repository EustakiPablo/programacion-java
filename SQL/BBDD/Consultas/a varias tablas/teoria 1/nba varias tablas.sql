USE nba;
SELECT * FROM jugadores JOIN equipos;
SELECT * FROM jugadores, equipos;

SELECT * FROM jugadores JOIN equipos ON jugadores.Nombre_equipo=equipos.nombre;
SELECT * FROM jugadores, equipos WHERE jugadores.Nombre_equipo=equipos.nombre;

USE jardineria;
SELECT *
FROM cliente INNER JOIN empleado
ON cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
INNER JOIN pago
ON cliente.codigo_cliente = pago.codigo_cliente;

SELECT cliente.nombre_cliente, Pedido.codigo_pedido
FROM cliente LEFT JOIN Pedido
ON cliente.codigo_cliente=pedido.codigo_cliente
;