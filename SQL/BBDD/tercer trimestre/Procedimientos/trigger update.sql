drop table if exists usuarios;
drop table if exists clavesanteriores;

create table usuarios(
 nombre varchar(30),
 clave varchar(30),
 primary key (nombre)
);

create table clavesanteriores(
 numero int auto_increment,
 nombre varchar(30),
 clave varchar(30),
 primary key (numero)
);
drop trigger if exists before_usuarios_update;

delimiter //
create trigger before_usuarios_update
  before update
  on usuarios
  for each row
begin
  insert into clavesanteriores(nombre, clave) values (old.nombre, old.clave); 
end //
delimiter ;

insert into usuarios(nombre,clave) values ('marcos','123abc');

update usuarios set clave='999zzz' where nombre='marcos';

select * from clavesanteriores;

update usuarios set clave='123456' where nombre='marcos';

select * from clavesanteriores;