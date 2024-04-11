USE empresa;
#Ejercicio 1
SELECT num_cliente,nombre
FROM clientes
WHERE num_vendedor = (SELECT num_empleados FROM empleados WHERE apellido = "calvo")
;
#Ejercicio 2
SELECT num_pedido,num_producto,fecha_pedido
FROM pedidos
WHERE num_cliente = (SELECT num_cliente FROM clientes WHERE nombre = "EDICIONES SANZ")
;
#Ejercicio 3
SELECT num_cliente,nombre,limite_credito
FROM clientes c1
WHERE limite_credito<(SELECT AVG(limite_credito) FROM clientes c2)
;
#Ejercicio 4
SELECT *
FROM productos 
ORDER BY precio_actual DESC
LIMIT 1
;
#Ejercicio 5
SELECT *
FROM clientes
HAVING num_cliente IN (SELECT num_cliente FROM pedidos WHERE num_producto = (SELECT num_producto FROM productos WHERE descripción = "DESTRUCTORA DE PAPEL A3"))
;
#Ejercicio 6
SELECT *
FROM empleados
WHERE Num_empleados IN (SELECT num_vendedor FROM clientes GROUP BY num_vendedor HAVING COUNT(num_vendedor)>2)
;
#Ejercicio 7
SELECT apellido,oficio
FROM empleados e1
WHERE num_dep = 10 && oficio IN (SELECT oficio FROM empleados e2 WHERE num_dep = (SELECT num_dep FROM departamentos WHERE nombre = "VENTAS"))
;
#Ejercicio 8
SELECT *
FROM empleados
WHERE Num_empleados IN (SELECT num_vendedor FROM clientes WHERE num_cliente NOT IN (SELECT num_cliente FROM pedidos))
;
#Ejercicio 9
SELECT num_dep,nombre
FROM departamentos
WHERE num_dep = (SELECT num_dep FROM empleados WHERE salario>=(SELECT MAX(salario) FROM empleados))
;
#Ejercicio 10
/*SELECT *
FROM empleados
HAVING salario <ALL (SELECT AVG(salario) FROM empleados e1 WHERE num_dep IN (SELECT num_dep FROM empleados WHERE e1.num_dep = num_dep) GROUP BY num_dep)
;*/
SELECT *
FROM empleados e1
WHERE salario < (SELECT AVG(salario) FROM empleados WHERE e1.num_dep = num_dep)
;
#Ejercicio 11
SELECT nombre,localidad
FROM clientes
WHERE num_cliente IN (SELECT num_cliente FROM pedidos)
;
#Ejercicio 12
SELECT num_dep,nombre
FROM departamentos
WHERE num_dep = (SELECT num_dep FROM empleados GROUP BY num_dep HAVING (SUM(salario)+SUM(IFNULL(comision,0)) ) ORDER BY SUM(salario)+SUM(IFNULL(comision,0)) ASC LIMIT 1 )
;