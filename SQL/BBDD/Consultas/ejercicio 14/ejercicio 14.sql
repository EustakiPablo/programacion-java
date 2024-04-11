USE empresa;
#Ejercicio 1
SELECT nombre, num_dep
FROM departamentos
WHERE num_dep IN (SELECT num_dep FROM empleados GROUP BY num_dep HAVING COUNT(Num_empleados)>0)
;
#Ejercicio 2 1015
SELECT *
FROM pedidos
WHERE fecha_pedido = (SELECT fecha_pedido FROM pedidos ORDER BY fecha_pedido DESC LIMIT 1)
;
#Ejercicio 3
SELECT oficio,SUM(salario)
FROM empleados
WHERE num_dep IN (SELECT num_dep FROM departamentos WHERE nombre = "VENTAS")
GROUP BY oficio
;
#Ejercicio 4
SELECT *
FROM productos
HAVING num_producto = (SELECT num_producto FROM pedidos GROUP BY num_producto ORDER BY SUM(unidades) DESC LIMIT 1)
;
#Ejercicio 5 tiene que dar 9
SELECT *
FROM pedidos p1
WHERE num_pedido IN (SELECT DISTINCT num_pedido FROM pedidos WHERE unidades IN (SELECT MAX(unidades) FROM pedidos GROUP BY num_producto))
;
#SOLUCIÓN
SELECT *
FROM pedidos p1
WHERE unidades = (SELECT MAX(unidades) FROM pedidos p2 WHERE p1.Num_producto = p2.Num_producto GROUP BY p2.Num_producto)
;
#Ejercicio 6
SELECT *
FROM empleados
WHERE comision IN (SELECT AVG(comision) FROM empleados GROUP BY oficio)
;