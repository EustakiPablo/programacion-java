USE empresa;
#Ejercicio 1
SELECT num_dep,COUNT(director),ROUND(AVG(salario),2)
FROM empleados
WHERE oficio = "DIRECTOR"
GROUP BY num_dep
;
#Ejercicio 2
SELECT num_dep,ROUND(AVG(salario),2)
FROM empleados
GROUP BY num_dep
HAVING AVG(salario)<3000
ORDER BY ROUND(AVG(salario),2) DESC
;
#Ejercicio 3
SELECT num_producto,COUNT(unidades)
FROM pedidos
GROUP BY num_producto
;
#Ejercicio 4
SELECT num_cliente,COUNT(num_cliente)
FROM pedidos
GROUP BY num_cliente
HAVING COUNT(num_cliente) >2
ORDER BY COUNT(num_cliente) DESC
;
#Ejercicio 5
SELECT localidad,COUNT(num_cliente)
FROM clientes
GROUP BY localidad
HAVING COUNT(num_cliente)>1
;
#Ejercicio 6
SELECT num_producto, COUNT(num_producto)
FROM pedidos
GROUP BY num_producto
ORDER BY COUNT(num_producto) DESC
LIMIT 4
;
#SUBCONSULTA
SELECT num_dep,apellido,salario
FROM empleados
WHERE salario > (SELECT AVG(salario) FROM empleados);
;
SELECT oficio, sum(salario)
FROM empleados
WHERE num_dep = (SELECT num_dep FROM departamentos WHERE nombre = "VENTAS")
GROUP BY oficio
;
SELECT num_dep, SUM(salario)
FROM empleados 
GROUP BY  num_dep
HAVING SUM(salario) = (SELECT SUM(salario)
				 FROM  empleados
				 GROUP BY num_dep
				 ORDER BY SUM(salario) DESC
				 LIMIT 1);
