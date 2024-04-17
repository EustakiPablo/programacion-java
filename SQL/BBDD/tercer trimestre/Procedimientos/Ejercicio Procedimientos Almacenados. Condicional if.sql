/*
	Mostramos la provincia con más clientes a partir de 2 nombres de provincias dados
	Si las 2 tienen el mismo número de clientes aparecen las 2
*/

#Creación de la base de datos
DROP DATABASE IF EXISTS empresaentradasalida;
CREATE DATABASE empresaentradasalida;
USE empresaentradasalida;

#Creación de las tablas
drop table if exists clientes;
 drop table if exists provincias;

 create table clientes (
  codigo int unsigned auto_increment,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint unsigned,
  telefono varchar(11),
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint unsigned auto_increment,
  nombre varchar(20),
  primary key (codigo)
 );
 
 #Inserción de datos
insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');
 insert into provincias (nombre) values('Misiones');
 insert into provincias (nombre) values('Salta');
 insert into provincias (nombre) values('Buenos Aires');
 insert into provincias (nombre) values('Neuquen');

 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Marcos', 'Colon 111', 'Córdoba',1,'null');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Ana', 'San Martin 222', 'Cruz del Eje',1,'4578585');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria',1,'4578445');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Luis', 'Sarmiento 444', 'Rosario',2,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje',1,'4253685');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Gomez Ines', 'San Martin 666', 'Santa Fe',2,'0345252525');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario',1,'4554455');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje',1,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Ramos Betina', 'San Martin 999', 'Cordoba',1,'4223366');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Lucas', 'San Martin 1010', 'Posadas',4,'0457858745');













#Procedimiento
DROP PROCEDURE IF EXISTS provinciaMasClient;
DELIMITER //
CREATE PROCEDURE provinciaMasClient(IN prov1 CHAR(20), IN prov2 CHAR(20))#las entradas de datos son las provincias
BEGIN
	#Declaración de variables y asignación de valores
	DECLARE prueba INT DEFAULT 0;
    DECLARE prueba2 INT DEFAULT 0;
	SELECT COUNT(codigo) INTO prueba FROM clientes WHERE codigoprovincia=(SELECT codigo FROM provincias WHERE nombre=prov1);
    SELECT COUNT(codigo) INTO prueba2 FROM clientes WHERE codigoprovincia=(SELECT codigo FROM provincias WHERE nombre=prov2);
    #Casteo a DOUBLE para comparación matemática
	SET prueba = CAST(prueba AS DOUBLE);
    SET prueba2 = CAST(prueba2 AS DOUBLE);
    #Condicional para ver que se imprime
    IF prueba > prueba2 THEN
		SELECT provincias.nombre,COUNT(clientes.codigo) FROM provincias,clientes WHERE clientes.codigoprovincia = provincias.codigo && provincias.nombre = prov1 GROUP BY provincias.nombre;
	ELSEIF prueba < prueba2 THEN
		SELECT provincias.nombre,COUNT(clientes.codigo) FROM provincias,clientes WHERE clientes.codigoprovincia = provincias.codigo && provincias.nombre = prov2 GROUP BY provincias.nombre;
	ELSE 
		SELECT provincias.nombre,COUNT(clientes.codigo) FROM provincias,clientes WHERE clientes.codigoprovincia = provincias.codigo && provincias.nombre = prov1 || provincias.nombre = prov2 GROUP BY provincias.nombre;
    END IF;
    
END //
DELIMITER ;

CALL provinciaMasClient('Santa Fe','Cordoba');
