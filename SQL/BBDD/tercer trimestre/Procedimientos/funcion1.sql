DROP DATABASE IF EXISTS dbfuncion1;
CREATE DATABASE dbfuncion1;
USE dbfuncion1;

drop function if exists f_mayor;

delimiter //
create function f_mayor(
  valor1 int,
  valor2 int) 
  -- se devuelve como VARCHAR para que no de problemas al devolver los valores concatenados
  returns VARCHAR(10)
  deterministic
begin 
-- si el valor 1 es mayor
  if valor1>valor2 then
    return CAST(valor1 AS char(10));
    -- si el valor 2 es mayor
  elseif valor2>valor1 then
    return CAST(valor2 AS char(10));
  else
  -- si son iguales
	return CONCAT(CAST(valor1 AS char(10)),",",CAST(valor2 AS char(10)));
  end if;
end //
delimiter ;

select f_mayor(50, 50);