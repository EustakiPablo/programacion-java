USE jardineria;
/*1*/
SELECT cliente.nombre_cliente,empleado.nombre,empleado.apellido1
FROM cliente,empleado
WHERE cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
;
/*2*/
SELECT cliente.nombre_cliente,empleado.nombre,empleado.apellido1
FROM cliente,empleado
WHERE cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado AND cliente.codigo_cliente IN (SELECT codigo_cliente FROM pago)
;
/*3*/
SELECT cliente.nombre_cliente,empleado.nombre,empleado.apellido1
FROM cliente,empleado
WHERE cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado AND cliente.codigo_cliente NOT IN (SELECT codigo_cliente FROM pago)
;
/*4*/
SELECT cliente.nombre_cliente,empleado.nombre,empleado.apellido1,oficina.ciudad
FROM cliente,empleado,oficina
WHERE cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado AND oficina.codigo_oficina = empleado.codigo_oficina AND cliente.codigo_cliente IN (SELECT codigo_cliente FROM pago)
;
/*5*/
SELECT oficina.linea_direccion1,oficina.linea_direccion2
FROM cliente,oficina,empleado
WHERE cliente.ciudad = "Fuenlabrada" AND cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado AND empleado.codigo_oficina = oficina.codigo_oficina
;
/*6*/
SELECT e1.nombre,e1.apellido1,e1.apellido2,e2.nombre,e2.apellido1,e2.apellido2,e3.nombre,e3.apellido1,e3.apellido2
FROM empleado e1, empleado e2, empleado e3
WHERE e1.codigo_jefe = e2.codigo_empleado AND e2.codigo_jefe = e3.codigo_empleado
;
/*7*/
SELECT DISTINCT cliente.nombre_cliente,gama_producto.gama
FROM cliente,gama_producto,producto,pedido,detalle_pedido
WHERE cliente.codigo_cliente = pedido.codigo_cliente AND pedido.codigo_pedido = detalle_pedido.codigo_pedido AND detalle_pedido.codigo_producto = producto.codigo_producto AND producto.gama = gama_producto.gama
;
/*8*/
SELECT *
FROM cliente
WHERE codigo_cliente NOT IN (SELECT codigo_cliente FROM pago)
;
/*9*/
SELECT *
FROM cliente
WHERE codigo_cliente NOT IN (SELECT codigo_cliente FROM pago) AND codigo_cliente NOT IN (SELECT codigo_cliente FROM pedido)
;
/*10*/
SELECT empleado.nombre,empleado.apellido1,oficina.codigo_oficina
FROM empleado,oficina
WHERE empleado.codigo_empleado NOT IN (SELECT codigo_empleado_rep_ventas FROM cliente) AND empleado.codigo_oficina = oficina.codigo_oficina
;
/*11*/
SELECT *
FROM oficina
WHERE oficina.codigo_oficina NOT IN (SELECT empleado.codigo_oficina
FROM empleado,cliente,pedido,detalle_pedido,producto,gama_producto
WHERE empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas AND pedido.codigo_cliente = cliente.codigo_cliente
AND pedido.codigo_pedido = detalle_pedido.codigo_pedido AND detalle_pedido.codigo_producto = producto.codigo_producto
AND producto.gama = gama_producto.gama AND gama_producto.gama = "Frutales")
;
/*12*/
SELECT *
FROM cliente
WHERE codigo_cliente NOT IN (SELECT codigo_cliente FROM pago) AND codigo_cliente IN (SELECT codigo_cliente FROM pedido)
;
/*13*/
SELECT empleado.codigo_empleado,COUNT(cliente.codigo_cliente)
FROM empleado LEFT JOIN cliente
ON cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
GROUP BY empleado.codigo_empleado
;
/*14*/
SELECT ANY_VALUE(pedido.codigo_pedido),producto.codigo_producto,COUNT(detalle_pedido.codigo_producto)
FROM producto,pedido,detalle_pedido
WHERE pedido.codigo_pedido = detalle_pedido.codigo_pedido AND producto.codigo_producto = detalle_pedido.codigo_producto
GROUP BY producto.codigo_producto
;
/*15*/
SELECT producto.nombre,COUNT(detalle_pedido.cantidad),ANY_VALUE((COUNT(detalle_pedido.cantidad)*producto.precio_venta)),ANY_VALUE((((COUNT(detalle_pedido.cantidad)*producto.precio_venta))+((COUNT(detalle_pedido.cantidad)*producto.precio_venta)*0.21))) AS TotalFacturado
FROM producto,pedido,detalle_pedido
WHERE producto.codigo_producto = detalle_pedido.codigo_producto AND pedido.codigo_pedido = detalle_pedido.codigo_pedido
GROUP BY producto.nombre
HAVING TotalFacturado > 3000
;
/*16*/
SELECT e1.nombre,e1.apellido1,e1.apellido2,e1.email
FROM empleado e1, empleado e2
WHERE e1.codigo_jefe = e2.codigo_empleado AND e2.nombre = "nei" AND e2.apellido1 = "Nishikori"
;
/*17*/
SELECT *
FROM producto
WHERE codigo_producto NOT IN (SELECT codigo_producto FROM detalle_pedido)
;
/*18*/
SELECT *
FROM pedido
WHERE DAYNAME(fecha_pedido) = "THURSDAY"
;
/*19*/
SELECT ANY_VALUE(empleado.nombre),COUNT(pedido.codigo_pedido)
FROM empleado,pedido,cliente
WHERE empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas AND pedido.codigo_cliente = cliente.codigo_cliente AND YEAR(pedido.fecha_pedido) = "2008"
GROUP BY empleado.nombre
ORDER BY COUNT(pedido.codigo_pedido) DESC
;
/*20*/
SELECT cliente.nombre_cliente,empleado.nombre,empleado.apellido1,oficina.telefono
FROM cliente,empleado,oficina
WHERE cliente.codigo_cliente NOT IN (SELECT codigo_cliente FROM pago) AND cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
AND empleado.codigo_oficina = oficina.codigo_oficina
;
/*21*/
SELECT *
FROM producto
WHERE codigo_producto IN (SELECT codigo_producto FROM detalle_pedido)
;
/*22*/
SELECT cliente.nombre_cliente,COUNT(pedido.codigo_cliente)
FROM cliente LEFT JOIN pedido
ON cliente.codigo_cliente = pedido.codigo_cliente
GROUP BY cliente.nombre_cliente
;
/*23*/
SELECT cliente.nombre_cliente
FROM cliente,pedido
WHERE cliente.codigo_cliente = pedido.codigo_cliente AND YEAR(pedido.fecha_pedido) = "2008"
ORDER BY cliente.nombre_cliente ASC
;


USE universidad;
/*24*/
SELECT *
FROM departamento
WHERE id NOT IN (SELECT id_departamento FROM profesor WHERE id IN (SELECT IFNULL(id_profesor,0) FROM asignatura))
;
/*25*/
SELECT profesor.nombre,profesor.apellido1
FROM profesor,asignatura,departamento
WHERE profesor.id_departamento = departamento.id AND asignatura.id_profesor != profesor.id
;
/*26*/
SELECT nombre,apellido1
FROM profesor
WHERE id_departamento NOT IN (SELECT id FROM departamento)
;
/*27*/
SELECT COUNT(asignatura.id),profesor.nombre
FROM asignatura,profesor
WHERE asignatura.id_profesor = profesor.id
GROUP BY profesor.nombre
ORDER BY COUNT(asignatura.id) DESC
;
/*28*/
SELECT curso_escolar.anyo_inicio,COUNT(DISTINCT alumno.id)
FROM curso_escolar,alumno,alumno_se_matricula_asignatura
WHERE alumno.id = alumno_se_matricula_asignatura.id_alumno AND alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id
GROUP BY curso_escolar.id
;
/*29*/
SELECT grado.nombre,COUNT(asignatura.id)
FROM grado LEFT JOIN asignatura
ON grado.id = asignatura.id_grado
GROUP BY grado.nombre
HAVING COUNT(asignatura.id) > 40
;
/*30*/
SELECT departamento.nombre,IFNULL(COUNT(profesor.id),0)
FROM profesor RIGHT JOIN departamento
ON profesor.id_departamento = departamento.id
GROUP BY departamento.nombre
;
/*31*/
SELECT departamento.nombre,IFNULL(COUNT(profesor.id),0)
FROM profesor,departamento
WHERE profesor.id_departamento = departamento.id
GROUP BY departamento.nombre
ORDER BY COUNT(profesor.id) DESC
;
/*32*/
SELECT *
FROM alumno
WHERE sexo = "M"
;
/*33*/
SELECT departamento.id
FROM departamento
WHERE departamento.id NOT IN (SELECT id_departamento FROM profesor WHERE id IN (SELECT id_profesor FROM asignatura WHERE id IN (SELECT id_asignatura FROM alumno_se_matricula_asignatura WHERE id_curso_escolar IN (SELECT id FROM curso_escolar))))
;
/*34*/
SELECT nombre
FROM asignatura
WHERE IFNULL(id_profesor,0) NOT IN (SELECT id FROM profesor)
;
/*35*/
SELECT *
FROM profesor
WHERE id NOT IN (SELECT IFNULL(id_profesor,0) FROM asignatura)
;
/*36*/
SELECT departamento.nombre, profesor.apellido1,profesor.apellido2,profesor.nombre
FROM profesor LEFT OUTER JOIN departamento
ON departamento.id = profesor.id_departamento
ORDER BY departamento.nombre, profesor.apellido1,profesor.apellido2,profesor.nombre
;
/*37*/
SELECT alumno.nombre,curso_escolar.anyo_inicio
FROM alumno,alumno_se_matricula_asignatura,curso_escolar
WHERE (curso_escolar.anyo_inicio = "2018" OR curso_escolar.anyo_inicio = "2019") AND alumno.id = alumno_se_matricula_asignatura.id_alumno AND alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id
;
/*38*/
SELECT nombre
FROM asignatura
WHERE id IN (SELECT id_asignatura FROM alumno_se_matricula_asignatura WHERE id_alumno = (SELECT id FROM alumno WHERE nif = "26902806M"))
;
/*39*/
SELECT alumno.*
FROM alumno,alumno_se_matricula_asignatura,grado,asignatura
WHERE alumno.sexo = "M" AND alumno.id = alumno_se_matricula_asignatura.id_alumno 
AND alumno_se_matricula_asignatura.id_asignatura = asignatura.id AND asignatura.id_grado = grado.id 
AND grado.nombre = "Grado en Ingeniería Informática (Plan 2015)"
;
/*40*/
SELECT nombre
FROM departamento
WHERE id IN (SELECT id_departamento FROM profesor WHERE id IN (SELECT id_profesor FROM asignatura WHERE id_grado IN (SELECT id FROM grado WHERE grado.nombre = "Grado en Ingeniería Informática (Plan 2015)")))
;