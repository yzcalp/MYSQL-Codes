
DELIMITER $$
DROP FUNCTION IF EXISTS fibo $$
CREATE FUNCTION fibo() RETURNS VARCHAR
DETERMINISTIC
BEGIN
	DECLARE temp_i INT DEFAULT 0;
	DECLARE i INT DEFAULT 1;
	DECLARE sumvals INT DEFAULT 0;
	DECLARE ans VARCHAR(100) DEFAULT '';
	
	fibloop: while sumvals < 100  do
		
		SET sumvals = i+temp_i;
		SET ans = CONCAT(ans,' ',CAST(sumvals TO CHAR));
		SET temp_i   = i;
		SET i = sumvals;
		
	END while fibloop;
	
	RETURN ans;
		
END $$

DELIMITER ;
