DROP DATABASE empresarepaso;
CREATE DATABASE IF NOT EXISTS empresarepaso;
USE empresarepaso;
CREATE TABLE IF NOT EXISTS departamentos (
	codigo INT(10) PRIMARY KEY,
    nombre VARCHAR(100),
    presupuesto DOUBLE,
    gastos DOUBLE
);
CREATE TABLE IF NOT EXISTS empleado (
	codigo INT(10) PRIMARY KEY,
    nif VARCHAR(9),
    nombre VARCHAR(100),
    apellido1 VARCHAR(100),
    apellido2 VARCHAR(100),
    codigo_departamento INT(10)
);
/*DEPARTAMENTOS*/
INSERT INTO departamentos VALUES (1,"departamento1",2000.0,1000.0);
INSERT INTO departamentos VALUES (2,"departamento2",3000.0,500.0);
INSERT INTO departamentos VALUES (3,"departamento3",1000.0,100.0);
INSERT INTO departamentos VALUES (4,"departamento4",7000.0,5000.0);
INSERT INTO departamentos VALUES (5,"departamento5",10000.0,700.0);
/*EMPLEADOS*/
INSERT INTO empleado VALUES (001,"38712645A","nombre1","apellido1","apellido1",1);
INSERT INTO empleado VALUES (002,"38712645C","nombre2","apellido2","apellido2",1);
INSERT INTO empleado VALUES (003,"38712655B","nombre3","apellido3","apellido3",2);
INSERT INTO empleado VALUES (004,"38712645D","nombre4","apellido4","apellido4",4);
INSERT INTO empleado VALUES (005,"38712645E","nombre5","apellido5","apellido5",5);

ALTER TABLE empleado MODIFY COLUMN nif VARCHAR(9) UNIQUE;

ALTER TABLE empleado MODIFY COLUMN nombre VARCHAR(100) NOT NULL;
ALTER TABLE empleado MODIFY COLUMN apellido1 VARCHAR(100) NOT NULL;

ALTER TABLE empleado ADD FOREIGN KEY (codigo_departamento) REFERENCES departamentos (codigo) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE empleado ADD COLUMN direccion VARCHAR(100);

SELECT empleado.*,departamentos.* FROM empleado JOIN departamentos ON empleado.codigo_departamento = departamentos.codigo;

SELECT AVG(presupuesto) FROM empleado RIGHT JOIN departamentos ON empleado.codigo_departamento = departamentos.codigo;

INSERT INTO empleado VALUES (006,"38712645Z","nombre6","apellido6","apellido6",null,"");
SELECT empleado.nombre FROM empleado LEFT JOIN departamentos ON empleado.codigo_departamento != departamentos.codigo WHERE empleado.codigo_departamento IS null;

SELECT nombre FROM departamentos WHERE codigo IN (SELECT codigo_departamento FROM empleado);

SELECT nombre,presupuesto FROM departamentos WHERE presupuesto = (SELECT MAX(presupuesto) FROM departamentos);

SELECT departamentos.nombre,COUNT(empleado.codigo) FROM departamentos LEFT JOIN empleado ON empleado.codigo_departamento = departamentos.codigo GROUP BY departamentos.codigo;

UPDATE departamentos SET presupuesto=presupuesto+(presupuesto*0.2) WHERE presupuesto < 10000;