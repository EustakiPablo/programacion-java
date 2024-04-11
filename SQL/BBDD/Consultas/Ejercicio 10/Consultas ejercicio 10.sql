USE empresa;
#Ejercicio 1
SELECT apellido, DATE_FORMAT(fecha_alta,'%e del %c de %Y')
FROM empleados;

#Ejercicio 2

SELECT SUBSTR(apellido,1,LENGTH(apellido)-3)
FROM empleados
WHERE LENGTH(apellido)>6
ORDER BY apellido;

#Ejercicio 3

SELECT apellido, salario*3/100 AS 'Importe regalos'
FROM empleados
WHERE comision = 0 OR comision IS NULL
ORDER BY apellido;

#Ejercicio 4

SELECT *
FROM empleados
/*WHERE salario > 1800 OR comision > 500 AND salario+comision > 2000;*/
WHERE IFNULL(salario,0)+ IFNULL(comision,0) > 2000 AND (salario > 1800 OR comision > 500);
#Ejercicio 5 el mas antiguo hazlo ordenando y mostrando solo un resultado

SELECT *
FROM empleados
WHERE oficio = "DIRECTOR"
ORDER BY fecha_alta ASC
LIMIT 1;

#Ejercicio 6

SELECT *
FROM empleados
WHERE num_dep = 20 OR num_dep = 30
ORDER BY salario DESC
LIMIT 2;