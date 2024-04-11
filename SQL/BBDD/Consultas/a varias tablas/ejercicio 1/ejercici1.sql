USE empresa;
/*Obtener un listado de clientes, indicando el número de cliente y su nombre, y el número de empleado y apellido de sus vendedores.*/
SELECT clientes.num_cliente,clientes.nombre,empleados.Num_empleados,empleados.apellido
FROM clientes,empleados
WHERE empleados.Num_empleados = clientes.num_vendedor
;
/*Listar todos los pedidos realizados con la descripción del producto y el nombre del cliente en lugar de sus números.*/
SELECT pedidos.num_pedido,productos.descripción,clientes.nombre
FROM pedidos,productos,clientes
WHERE pedidos.num_producto = productos.num_producto AND pedidos.num_cliente = clientes.num_cliente
;
/*Obtener una lista de los pedidos con la descripción del producto y el nombre del cliente de los clientes de MADRID.*/
SELECT pedidos.num_pedido,productos.descripción,clientes.nombre
FROM pedidos,productos,clientes
WHERE  pedidos.num_producto = productos.num_producto AND pedidos.num_cliente = clientes.num_cliente AND clientes.localidad = "MADRID"
;
/*Visualizar el nombre del departamento, la fecha de alta, el apellido, el oficio y el nombre de 
localidad de aquellos trabajadores que están en un departamento ubicado en una localidad que no contenga ninguna C en su nombre.*/

SELECT departamentos.nombre,empleados.fecha_alta,empleados.apellido,empleados.oficio,departamentos.localidad
FROM departamentos,empleados
WHERE departamentos.localidad NOT LIKE "%C%" AND empleados.num_dep = departamentos.num_dep
;

/*. Obtener una lista de los nombres de los clientes con el importe acumulado de sus pedidos.*/

SELECT clientes.nombre,SUM(productos.precio_actual*pedidos.unidades)
FROM clientes,pedidos,productos
WHERE clientes.num_cliente = pedidos.num_cliente AND pedidos.num_producto = productos.num_producto
GROUP BY clientes.num_cliente
;

/*Obtener el número de pedidos por producto, visualizando el número de producto, su descripción y el número de pedidos correspondiente.*/

SELECT productos.num_producto,productos.descripción,COUNT(pedidos.num_pedido)
FROM pedidos,productos
WHERE pedidos.num_producto = productos.num_producto
GROUP BY productos.num_producto
;

/*Obtener los clientes que no pertenezcan a las localidades de sus vendedores. En el listado visualizar el nombre del cliente y su 
localidad y el nombre del vendedor y su localidad con los alias correspondientes para indicarlo.*/

SELECT clientes.nombre,clientes.localidad,empleados.apellido,departamentos.localidad
FROM clientes,empleados,departamentos
WHERE clientes.num_vendedor = empleados.Num_empleados AND empleados.num_dep = departamentos.num_dep AND clientes.localidad != departamentos.localidad
;

/*Obtener los empleados que tienen un jefe que es está en el departamento 30, mostrando el nombre del empleado y de su jefe*/

SELECT *
FROM empleados e1
WHERE director IN (SELECT Num_empleados FROM empleados WHERE num_dep = 30)
;

SELECT e1.apellido,e2.apellido
FROM empleados e1 JOIN empleados e2
WHERE e1.director = e2.Num_empleados AND e1.num_dep = 30
;

/*Visualizar los datos de los departamentos con el nombre del departamento, el salario total (salario + comision) 
anual (14 pagas) y la comisión anual total de sus trabajadores, incluyendo todos los departamentos. Si la comisión 
total anual es nula se mostrará un cero.*/

SELECT departamentos.num_dep,departamentos.nombre,IFNULL((SUM(empleados.salario+IFNULL(empleados.comision,0))*14),0) as "SALARIO TOTAL",IFNULL((SUM(empleados.comision)),0) as COMISION
FROM departamentos LEFT JOIN empleados
ON departamentos.num_dep = empleados.num_dep
GROUP BY departamentos.num_dep
;

/*Visualizar los nombres de los clientes y la cantidad de pedidos realizados, incluyendo los que no hayan realizado ningún pedido.*/

SELECT clientes.num_cliente,clientes.nombre,COUNT(pedidos.num_pedido)
FROM clientes LEFT JOIN pedidos
ON pedidos.num_cliente = clientes.num_cliente
GROUP BY clientes.num_cliente
;

/*Realizar un listado de todos los productos con su 
descripción y el importe total (unidades totales por el precio unidad) de cada 
uno de ellos. Deben mostrarse todos los productos incluidos los que no tiene pedidos y en este caso en importe total se mostrará un 0.*/

SELECT productos.num_producto,productos.descripción,IFNULL(SUM(productos.precio_actual * pedidos.unidades),0)
FROM productos LEFT JOIN pedidos ON productos.num_producto = pedidos.num_producto
GROUP BY productos.num_producto
;

/*Visualizar los apellidos de los empleados y el número de clientes que tienen, 
visualizando todos los empleados de la empresa tengan o no clientes asignados */

SELECT empleados.apellido,COUNT(clientes.num_cliente)
FROM empleados LEFT JOIN clientes
ON clientes.num_vendedor = empleados.Num_empleados
GROUP BY empleados.Num_empleados
;