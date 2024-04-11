USE tienda;
/*1.	Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.*/
SELECT producto.nombre,producto.precio,fabricante.nombre
FROM producto LEFT JOIN fabricante
ON fabricante.codigo = producto.codigo_fabricante
;
/*2.	Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los 
productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.*/
SELECT producto.nombre,producto.precio,fabricante.nombre
FROM producto LEFT JOIN fabricante
ON fabricante.codigo = producto.codigo_fabricante
ORDER BY fabricante.nombre ASC
;
/*3.	Devuelve una lista con el código del producto, nombre del producto, código del 
fabricante y nombre del fabricante, de todos los productos de la base de datos.*/
SELECT producto.id,producto.nombre,fabricante.nombre,fabricante.codigo
FROM producto LEFT JOIN fabricante
ON fabricante.codigo = producto.codigo_fabricante
;
/*4.	Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.*/
SELECT producto.nombre,producto.precio,fabricante.nombre
FROM producto JOIN fabricante
WHERE fabricante.codigo = producto.codigo_fabricante AND producto.precio = (SELECT MIN(producto.precio) FROM producto)
;
/*5.	Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.*/
SELECT producto.nombre,producto.precio,fabricante.nombre
FROM producto JOIN fabricante
WHERE fabricante.codigo = producto.codigo_fabricante AND producto.precio = (SELECT MAX(producto.precio) FROM producto)
;
/*6.	Devuelve una lista de todos los productos del fabricante Lenovo.*/
SELECT producto.nombre
FROM producto,fabricante
WHERE fabricante.codigo = producto.codigo_fabricante AND fabricante.nombre = "lenovo"
;
/*7.	Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.*/
SELECT producto.nombre
FROM producto,fabricante
WHERE fabricante.codigo = producto.codigo_fabricante AND fabricante.nombre = "crucial" AND producto.precio>200
;
/*8.	Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Sin utilizar el operador IN.*/
SELECT producto.nombre
FROM producto,fabricante
WHERE fabricante.codigo = producto.codigo_fabricante AND (fabricante.nombre="Hewlett-packard" OR fabricante.nombre="Seagate" OR fabricante.nombre="Asus")
;
/*9.	Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Utilizando el operador IN.*/
SELECT producto.nombre
FROM producto,fabricante
WHERE fabricante.codigo = producto.codigo_fabricante AND (fabricante.nombre IN ("Hewlett-Packard","Seagate","Asus"))
;
/*10.	Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.*/
