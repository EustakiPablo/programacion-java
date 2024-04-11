USE empresa;
#Ejercicio 1
SELECT *
FROM empleados
WHERE fecha_alta > "1981-05-01"
;
#Ejercicio 2
SELECT apellido,DATEDIFF("2004-12-31",fecha_alta)
FROM empleados
;
#Ejercicio 3
SELECT apellido,fecha_alta,DATE_FORMAT(fecha_alta,"%W")
FROM empleados
;
#Ejercicio 4
SELECT ifnull(salario,0)+IFNULL(comision,0) AS "Importe total"
FROM empleados
WHERE oficio = "VENDEDOR"
;
#Ejercicio 5
SELECT Num_empleados,apellido,oficio
FROM empleados
WHERE apellido LIKE "%O" OR oficio LIKE "V%"
;
#Ejercicio 6
#PREGUNTA 6 RPAD
-- Es para corregir la errata en los departamentos
UPDATE departamentos SET nombre="INVESTIGACION" WHERE nombre = "INESTIGACIÓN";
SELECT RPAD(nombre,36,"*")
FROM departamentos
;
#Ejercicio 7
SELECT REPLACE(apellido,"A","*")
FROM empleados
;
#Ejercicio 8
SELECT SUBSTR(nombre,1,LENGTH(nombre)/2)
FROM departamentos
;
#Ejercicio 9
SELECT num_dep,oficio,apellido,Num_empleados,director,fecha_alta,salario,comision
FROM empleados
ORDER BY num_dep,oficio,apellido
;
#Ejercicio 10
SELECT num_dep,apellido,IFNULL(salario,0)+IFNULL(comision,0) AS "salario total"
FROM empleados
ORDER BY num_dep,IFNULL(salario,0)+IFNULL(comision,0) ASC
;
#Ejercicio 11
SELECT apellido,IFNULL(salario,0)+IFNULL(comision,0) AS "salario total"
FROM empleados
WHERE num_dep = 30
ORDER BY IFNULL(salario,0)+IFNULL(comision,0) DESC, apellido
;
#Ejercicio 12
SELECT apellido
FROM empleados
WHERE IFNULL(comision,0) = 0
ORDER BY LENGTH(apellido) ASC
;
#Ejercicio 13
SELECT nombre,LENGTH(nombre)
FROM departamentos
ORDER BY LENGTH(nombre) DESC
LIMIT 1
;
#Ejercicio 14
SELECT apellido, fecha_alta, num_dep
FROM empleados
ORDER BY fecha_alta DESC
LIMIT 4
;