DROP PROCEDURE if EXISTS star;
DELIMITER $$
CREATE PROCEDURE star(A INT) 
DETERMINISTIC
	BEGIN 
		DROP TABLE IF EXISTS t1;
		CREATE TEMPORARY TABLE t1(aval VARCHAR(20));
		while A > 0 DO
		
			INSERT INTO t1 VALUES( REPEAT('*',A));
			
			SET A = A-1;
		END WHILE;
		SELECT * FROM t1;
	END $$
DELIMITER ;

CALL star(20);