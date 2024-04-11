SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `clientes`
-- ----------------------------
/*DROP DATABASE empresa;*/

CREATE DATABASE empresa;
USE empresa;
DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
  num_cliente decimal(3,0) NOT NULL DEFAULT '0',
  nombre varchar(30) DEFAULT NULL,
  localidad varchar(20) DEFAULT NULL,
  num_vendedor char(4) DEFAULT NULL,
  debe decimal(6,2) DEFAULT NULL,
  haber decimal(6,2) DEFAULT NULL,
  limite_credito decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (num_cliente),
  KEY fk_clientes_empleados (num_vendedor),
  CONSTRAINT fk_clientes_empleados FOREIGN KEY (num_vendedor) REFERENCES empleados (Num_empleados) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `clientes`
-- ----------------------------
BEGIN;
INSERT INTO clientes VALUES ('101', 'Distribuciones Gomez', 'Madrid', '7499', '0.00', '0.00', '5000.00'), ('102', 'Logitronica S.L.', 'Barcelona', '7654', '0.00', '0.00', '5000.00'), ('103', 'Industrias lacteas S.A.', 'Las Rozas', '7844', '0.00', '0.00', '9999.99'), ('104', 'Talleres Esteso S.A.', 'Sevilla', '7654', '0.00', '0.00', '5000.00'), ('105', 'Ediciones Sanz', 'Barcelona', '7499', '0.00', '0.00', '5000.00'), ('106', 'Signologic S.A.', 'Madrid', '7654', '0.00', '0.00', '5000.00'), ('107', 'Martín y asociados S.L.', 'Aravaca', '7844', '0.00', '0.00', '9999.99'), ('108', 'Manufacturas Ali S.A.', 'Sevilla', '7654', '0.00', '0.00', '5000.00');
COMMIT;

-- ----------------------------
--  Table structure for `departamentos`
-- ----------------------------
DROP TABLE IF EXISTS departamentos;
CREATE TABLE departamentos (
  num_dep char(2) NOT NULL,
  nombre varchar(20) DEFAULT NULL,
  localidad varchar(20) DEFAULT NULL,
  PRIMARY KEY (num_dep)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `departamentos`
-- ----------------------------
BEGIN;
INSERT INTO departamentos VALUES ('10', 'CONTABILIDAD', 'BARCELONA'), ('20', 'INESTIGACIÓN', 'VALENCIA'), ('30', 'VENTAS', 'MADRID'), ('40', 'PRODUCTOS', 'SEVILLA');
COMMIT;

-- ----------------------------
--  Table structure for `empleados`
-- ----------------------------
DROP TABLE IF EXISTS empleados;
CREATE TABLE empleados (
  Num_empleados char(4) NOT NULL,
  apellido varchar(15) DEFAULT NULL,
  oficio varchar(20) DEFAULT NULL,
  director char(4) DEFAULT NULL,
  fecha_alta date DEFAULT NULL,
  salario float(6,2) DEFAULT NULL,
  comision float(6,2) DEFAULT NULL,
  num_dep char(2) DEFAULT NULL,
  PRIMARY KEY (Num_empleados),
  KEY FK_EMPLEADOS_DEPARTAMENTO (num_dep),
  KEY FK_EMPLEADOS_EMPLEADOS (director),
  CONSTRAINT FK_EMPLEADOS_DEPARTAMENTO FOREIGN KEY (num_dep) REFERENCES departamentos (num_dep),
  CONSTRAINT FK_EMPLEADOS_EMPLEADOS FOREIGN KEY (director) REFERENCES empleados (Num_empleados)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `empleados`
-- ----------------------------
BEGIN;
INSERT INTO empleados VALUES ('7499', 'ALONSO', 'VENDEDOR', '7698', '1981-02-20', '1400.00', '400.00', '10'), ('7521', 'LOPEZ', 'EMPLEADO', '7782', '1981-05-08', '1350.00', null, '10'), ('7654', 'MARTIN', 'VENDEDOR', '7698', '1981-09-28', '1500.00', '1600.00', '30'), ('7698', 'GARRIDO', 'DIRECTOR', '7839', '1981-05-01', '3850.00', null, '30'), ('7782', 'MARTINEZ', 'DIRECTOR', '7839', '1981-06-09', '2450.00', null, '10'), ('7839', 'REY', 'PRESIDENTE', null, '1981-11-17', '6000.00', null, '10'), ('7844', 'CALVO', 'VENDEDOR', '7698', '1981-09-08', '1800.00', '0.00', '30'), ('7876', 'GIL', 'ANALISTA', '7782', '1982-05-06', '3350.00', null, '20'), ('7900', 'JIMENEZ', 'EMPLEADO', '7782', '1982-03-24', '1400.00', null, '20');
COMMIT;

-- ----------------------------
--  Table structure for `pedidos`
-- ----------------------------
DROP TABLE IF EXISTS pedidos;
CREATE TABLE pedidos (
  num_pedido decimal(4,0) NOT NULL DEFAULT '0',
  num_producto decimal(2,0) DEFAULT NULL,
  num_cliente decimal(3,0) DEFAULT NULL,
  unidades decimal(2,0) DEFAULT NULL,
  fecha_pedido date DEFAULT NULL,
  PRIMARY KEY (`num_pedido`),
  KEY pk_pedidos_clientes (num_cliente),
  KEY pk_pedidos_productos (num_producto),
  CONSTRAINT pk_pedidos_clientes FOREIGN KEY (num_cliente) REFERENCES clientes (num_cliente),
  CONSTRAINT pk_pedidos_productos FOREIGN KEY (num_producto) REFERENCES productos (num_producto)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `pedidos`
-- ----------------------------
BEGIN;
INSERT INTO pedidos VALUES ('1000', '20', '103', '3', '1999-10-06'), ('1001', '50', '106', '2', '1999-10-06'), ('1002', '10', '101', '4', '1999-10-05'), ('1003', '20', '105', '5', '1999-10-16'), ('1004', '40', '106', '8', '1999-10-20'), ('1005', '30', '105', '2', '1999-10-20'), ('1006', '70', '103', '3', '1999-11-03'), ('1007', '50', '101', '2', '1999-11-06'), ('1008', '10', '106', '6', '1999-11-16'), ('1009', '20', '105', '2', '1999-11-26'), ('1010', '40', '102', '3', '1999-12-08'), ('1011', '30', '106', '2', '1999-12-15'), ('1012', '10', '105', '3', '1999-12-06'), ('1013', '30', '106', '2', '1999-12-06'), ('1014', '20', '101', '4', '2000-01-07'), ('1015', '70', '105', '4', '2000-01-16');
COMMIT;

-- ----------------------------
--  Table structure for `productos`
-- ----------------------------
DROP TABLE IF EXISTS productos;
CREATE TABLE productos (
  num_producto decimal(2,0) NOT NULL DEFAULT '0',
  descripción varchar(50) DEFAULT NULL,
  precio_actual decimal(6,2) DEFAULT NULL,
  stock_disponible decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (num_producto)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `productos`
-- ----------------------------
BEGIN;
INSERT INTO productos VALUES ('10', 'Mesa despacho mod. gaviota', '550.00', '50'), ('20', 'Silla director mod. bufalo', '670.00', '25'), ('30', 'Armario nogal dos puertas', '460.00', '20'), ('40', 'Meas modelo unión', '340.00', '15'), ('50', 'Archivador cerezo', '1050.00', '20'), ('60', 'Caja seguridad mod B222', '252.00', '15'), ('70', 'Destructora de papel A3', '450.00', '25'), ('80', 'Módulo ordenador mod. ergos', '495.00', '25');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
