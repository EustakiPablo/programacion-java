USE empresa;
/*
1- Obtener una lista de los pedidos con la descripción del producto y el nombre del
cliente clasificados por el número del cliente.
*/
SELECT pedidos.num_pedido,productos.descripción,clientes.nombre
FROM clientes,productos,pedidos
WHERE clientes.num_cliente = pedidos.num_cliente AND pedidos.num_producto=productos.num_producto
ORDER BY clientes.num_cliente
;
/*2. Obtener los nombres de los empleados y los nombres de sus departamentos, para
aquellos empleados que no son del departamento VENTAS y que entraron en la
empresa después del 1 de enero de 82.
*/
SELECT empleados.apellido,departamentos.nombre
FROM empleados,departamentos
WHERE empleados.num_dep = departamentos.num_dep AND departamentos.nombre != "Ventas" AND empleados.fecha_alta > "1982-01-01"
;
/*3- Obtener una lista de los apellidos de los vendedores con el importe acumulado de
sus pedidos.
*/
SELECT empleados.Num_empleados,empleados.apellido,SUM(productos.precio_actual*pedidos.unidades) as "Importe acumulado"
FROM empleados,pedidos,productos,clientes
WHERE pedidos.num_producto = productos.num_producto AND pedidos.num_cliente = clientes.num_cliente AND clientes.num_vendedor = empleados.Num_empleados
GROUP BY empleados.Num_empleados
;
/*4- Obtener los nombres de los empleados del departamento 30 que son jefes directos de algún 
empleado de la empresa, indicando de cuantos empleados son jefes. garrido 3*/
SELECT e1.apellido,COUNT(e2.Num_empleados)
FROM empleados e1, empleados e2
WHERE e1.Num_empleados = e2.director AND e1.num_dep = 30
GROUP BY e1.apellido
;
/*5- Realizar un listado de los empleados cuyo oficio es EMPLEADO, que incluirá los
números de empleado, los apellido y los salarios anuales, sabiendo que el salario
anual es el salario multiplicado por 14, e incluyendo en este listado el nombre del
director del empleado.
*/
SELECT e1.apellido,e1.salario*14 as "Salario",e2.apellido as "Director"
FROM empleados e1, empleados e2
WHERE e1.director = e2.Num_empleados AND e1.oficio = "empleado"
;
/*6- Visualizar los productos con el número total de pedidos, las unidades totales
vendidas, y el precio unidad de cada uno de ellos incluyendo los que no tienen
pedidos (en este caso se mostrará un 0 en el total unidades vendidas)
*/
SELECT productos.descripción,IFNULL(COUNT(pedidos.num_pedido),0) as "Número de pedidos",IFNULL(SUM(pedidos.unidades),0) as "Unidades totales vendidas",IFNULL(productos.precio_actual,0) as "Precio actual"
FROM pedidos RIGHT JOIN productos
ON pedidos.num_producto = productos.num_producto
GROUP BY productos.num_producto
;