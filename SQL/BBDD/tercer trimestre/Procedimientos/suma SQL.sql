DROP PROCEDURE IF EXISTS SUMA;
DELIMITER //
CREATE PROCEDURE mult(IN a INT, IN b INT, OUT c INT)
	BEGIN
		SET c = a*b;
        DECLARE edad INT;
	END //
DELIMITER ;
SET @resultado = '';
CALL mult(5,5,@resultado);
SELECT @resultado;


#EJEMPLOS
DELIMITER //
CREATE PROCEDURE proc_vars()
  BEGIN
     
    DECLARE v_rcount INTEGER;

    DECLARE v_max DECIMAL (9,2);

    DECLARE v_adate, v_another  DATE;    		 

    DECLARE v_total INTEGER DEFAULT 0;           

    DECLARE v_rowsChanged BOOLEAN DEFAULT FALSE; 

    SET v_total = v_total + 1;                   
	
    SELECT MAX(salary)                           
      INTO v_max FROM employee;  	    		 


    SELECT CURRENT DATE, CURRENT DATE            
         INTO v_adate, v_another
    FROM SYSIBM.SYSDUMMY1;

    DELETE FROM T; 
    GET DIAGNOSTICS v_rcount = ROW_COUNT;        

    IF v_rcount > 0 THEN                         
      SET is_done = TRUE;
    END IF;
  END //
DELIMITER ;


DELIMITER //
/*CREATE PROCEDURE swtichCase(IN expresion INT, OUT salida VARCHAR)
	BEGIN
		CASE expresion
			WHEN 1 THEN
				SELECT "HOLA";
			WHEN 2 THEN
				SELECT "ADIOS";
			ELSE
				SELECT "TE CAGAS";
		END CASE;
  END //
DELIMITER ;*/
