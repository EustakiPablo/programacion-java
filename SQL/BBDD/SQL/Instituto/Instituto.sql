DROP DATABASE Instituto;
CREATE DATABASE Instituto;
USE Instituto;
CREATE TABLE Alumnos(
	Num_Alumno VARCHAR(4),
    Nombre VARCHAR(15),
    Apellidos VARCHAR(20),
    Direccion VARCHAR(30),
    Telefono VARCHAR(9) NOT NULL,
    Cp VARCHAR(5) /*CONSTRAINT CHECK (Cp BETWEEN 28000 AND 28999)*/,
    Email VARCHAR(20),
    CONSTRAINT pk_Num_Alumno PRIMARY KEY(Num_Alumno),
    CONSTRAINT ck_cp_alumno CHECK(Cp BETWEEN 28000 AND 28999)
);

INSERT INTO Alumnos VALUES ("0001","Oscar","González","Mayor,5","911234567","28801","oscar@yahoo.es");
INSERT INTO Alumnos VALUES ("0002","Miguel","Ortiz","Princesa.4","913216549","28804","Miguel@terra.es");
INSERT INTO Alumnos VALUES ("0003","Jose","Gómez","Salamanca,3","918794568","28805","");
INSERT INTO Alumnos VALUES ("0004","Gema","López","Mayor, 8","918754981","28801","gema@terra.es");
INSERT INTO Alumnos VALUES ("0005","Javier","Alonso","Ibiza,37","91875875","28814","");

CREATE TABLE Asignaturas(
	Cod_Asignatura VARCHAR(2),
    Nombre VARCHAR(30),
    Creditos INT NOT NULL,
    CONSTRAINT pk_Cod_Asignatura PRIMARY KEY(Cod_Asignatura)
);

INSERT INTO Asignaturas VALUES ("SI","Sistemas",8);
INSERT INTO Asignaturas VALUES ("PL","Programaciín",12);
INSERT INTO Asignaturas VALUES ("AN","Análisis",10);
INSERT INTO Asignaturas VALUES ("RL","Análisis",10);
INSERT INTO Asignaturas VALUES ("BD","Base de Datos",10);

CREATE TABLE Matricula(
	Num_Alumno VARCHAR(4),
    Cod_Asignatura VARCHAR(2),
    Nota_1EVA INT,
    Nota_2EVA INT,
    Nota_Junio INT,
    Nota_Septiembre FLOAT(6,2),
    CONSTRAINT pk_Matricula PRIMARY KEY(Num_Alumno,Cod_Asignatura),
    CONSTRAINT fk_Matricula_Alumnos FOREIGN KEY(Num_Alumno) REFERENCES Alumnos (Num_Alumno),
    CONSTRAINT fk_Matricula_Asignatura FOREIGN KEY(Cod_Asignatura) REFERENCES Asignaturas(Cod_Asignatura)
    
);

INSERT INTO Matricula VALUES ("0001","SI",7,4,4,7.2);
INSERT INTO Matricula VALUES ("0001","PL",5,5,6,NULL);
INSERT INTO Matricula VALUES ("0001","AN",8,7,4,6.5);
INSERT INTO Matricula VALUES ("0002","SI",8,8,9,NULL);
INSERT INTO Matricula VALUES ("0002","PL",4,4,3,5.5);
INSERT INTO Matricula VALUES ("0003","AN",7,7,7,NULL);
INSERT INTO Matricula VALUES ("0003","PL",6,6,6,NULL);