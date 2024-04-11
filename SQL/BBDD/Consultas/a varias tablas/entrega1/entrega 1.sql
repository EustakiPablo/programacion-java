USE tienda;
/*1.	Calcula el precio más caro de todos los productos del fabricante Asus.*/
SELECT MAX(precio)
FROM producto
WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = "asus")
;
/*2.	Calcula la suma de todos los productos del fabricante Asus.*/
SELECT SUM(precio)
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo AND fabricante.nombre = "Asus"
;
/*3.	Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene el fabricante Crucial.*/
SELECT MAX(producto.precio),MIN(producto.precio),AVG(producto.precio),COUNT(producto.id)
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo AND fabricante.nombre = "Crucial"
GROUP BY fabricante.nombre
;
/*4.	Muestra el número total de productos que tiene cada uno de los fabricantes. 
El listado también debe incluir los fabricantes que no tienen ningún producto. 
El resultado mostrará dos columnas, una con el nombre del fabricante y otra con el número 
de productos que tiene. Ordene el resultado descendentemente por el número de productos.*/
SELECT fabricante.nombre,COUNT(producto.id)
FROM fabricante LEFT JOIN producto
ON producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.nombre
ORDER BY COUNT(producto.id) DESC
;
/*5.	Muestra el precio máximo, precio mínimo, precio medio y el número total de productos de los 
fabricantes que tienen un precio medio superior a 200€. No es necesario mostrar el nombre del fabricante, 
con el código del fabricante es suficiente.*/
SELECT MAX(producto.precio),MIN(producto.precio),AVG(producto.precio),COUNT(producto.id),fabricante.codigo
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.codigo
HAVING AVG(producto.precio)>200
;
/*6.	Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo, 
precio medio y el número total de productos de los fabricantes que tienen un precio medio 
superior a 200€. Es necesario mostrar el nombre del fabricante.*/
SELECT MAX(producto.precio),MIN(producto.precio),AVG(producto.precio),COUNT(producto.id),fabricante.codigo,fabricante.nombre
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.codigo
HAVING AVG(producto.precio)>200
;
/*7.	Calcula el número de productos que tienen un precio mayor o igual a 180€.*/
SELECT COUNT(*)
FROM producto
WHERE precio>=180
;
/*8.	Calcula el número de productos que tiene cada fabricante con un precio mayor o igual a 180€.*/
SELECT COUNT(producto.id),fabricante.nombre
FROM producto,fabricante
WHERE producto.precio>=180 AND producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.nombre
;
/*9.	Lista el precio medio los productos de cada fabricante, mostrando solamente el código del fabricante.*/
SELECT fabricante.codigo,IFNULL(AVG(producto.precio),0)
FROM producto RIGHT JOIN fabricante
ON producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.codigo
;
/*10.	Lista el precio medio de los productos de cada fabricante, mostrando solamente el nombre del fabricante.*/
SELECT fabricante.nombre,AVG(producto.precio)
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.nombre
;
/*11.	Lista los nombres de los fabricantes cuyos productos tienen un precio medio mayor o igual a 150€.*/
SELECT fabricante.nombre,AVG(producto.precio)
FROM fabricante,producto
WHERE producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.nombre
HAVING AVG(producto.precio)>=150
;
/*12.	Devuelve un listado con los nombres de los fabricantes que tienen 2 o más productos.*/
SELECT fabricante.nombre,COUNT(producto.id)
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.nombre
HAVING COUNT(producto.id)>=2
;
/*13.	Devuelve un listado con los nombres de los fabricantes y el número de productos que 
tiene cada uno con un precio superior o igual a 220 €. No es necesario mostrar el nombre de 
los fabricantes que no tienen productos que cumplan la condición.*/
SELECT fabricante.nombre,COUNT(producto.id)
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo AND producto.precio>=220
GROUP BY fabricante.nombre
;
/*14.	Devuelve un listado con los nombres de los fabricantes y el número de productos que 
tiene cada uno con un precio superior o igual a 220 €. El listado debe mostrar el nombre de 
todos los fabricantes, es decir, si hay algún fabricante que no tiene productos con un precio 
superior o igual a 220€ deberá aparecer en el listado con un valor igual a 0 en el número de productos.*/
SELECT fabricante.nombre,COUNT(producto.id)
FROM producto RIGHT JOIN fabricante
ON producto.codigo_fabricante = fabricante.codigo AND producto.precio>=220
GROUP BY fabricante.nombre
ORDER BY COUNT(producto.id) DESC
;
/*15.	Devuelve un listado con los nombres de los fabricantes donde la suma del precio de todos sus productos es superior a 1000 €.*/
SELECT fabricante.nombre,SUM(producto.precio)
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo
GROUP BY  fabricante.nombre
HAVING SUM(producto.precio) > 1000
;
/*16.	Devuelve un listado con el nombre del producto más caro que tiene cada fabricante. 
El resultado debe tener tres columnas: nombre del producto, precio y nombre del fabricante. 
El resultado tiene que estar ordenado alfabéticamente de menor a mayor por el nombre del fabricante.*/
SELECT fabricante.nombre,producto.precio,producto.nombre
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo AND producto.precio IN (SELECT MAX(producto.precio) FROM producto,fabricante WHERE producto.codigo_fabricante = fabricante.codigo GROUP BY fabricante.nombre)
GROUP BY fabricante.codigo,producto.precio,producto.nombre
ORDER BY fabricante.nombre DESC
;
/*17.	Lista el nombre de cada fabricante con el nombre y el precio de su producto más caro.*/
SELECT fabricante.nombre,producto.precio,producto.nombre
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo AND producto.precio IN (SELECT MAX(producto.precio) FROM producto,fabricante WHERE producto.codigo_fabricante = fabricante.codigo GROUP BY fabricante.nombre)
GROUP BY fabricante.codigo,producto.precio,producto.nombre
ORDER BY fabricante.nombre
;
/*18.	Devuelve un listado de todos los productos que tienen un precio mayor o igual a la media de todos los productos de su mismo fabricante.*/
SELECT producto.nombre
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo AND (producto.precio,fabricante.nombre) >= ANY (SELECT AVG(producto.precio),fabricante.nombre FROM producto,fabricante WHERE producto.codigo_fabricante = fabricante.codigo GROUP BY fabricante.nombre)
GROUP BY producto.nombre
ORDER BY producto.nombre
;
/*19.	Lista el nombre del producto más caro del fabricante Lenovo.*/
SELECT producto.nombre
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo AND fabricante.nombre = "lenovo" AND producto.precio = (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = "lenovo"))
;
/*20.	Devuelve un listado con todos los nombres de los fabricantes que tienen el mismo número de productos que el fabricante Lenovo.*/
SELECT fabricante.nombre,COUNT(producto.id)
FROM producto,fabricante
WHERE producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.codigo
HAVING COUNT(producto.id) = (SELECT COUNT(*) FROM fabricante WHERE nombre = "Lenovo")
;