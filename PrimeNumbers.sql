
DELIMITER $$
DROP FUNCTION if EXISTS primenum $$
CREATE FUNCTION primenum(K INT) RETURNS VARCHAR(1000)
DETERMINISTIC
BEGIN
	DECLARE i INT DEFAULT 3;
	DECLARE j INT DEFAULT 2;
	DECLARE ans VARCHAR(1000) DEFAULT '2';
	
	fr: loop
		IF i > k THEN
			LEAVE fr;
		END IF;--  first loop ending condition
		
		
		sc: loop
			IF j > k THEN
				LEAVE sc;
			END IF;--  second loop ending condition
			
			-- Prime number logic
			IF i%j = 0 then
				leave sc;
			ELSEIF j > (i/2) then
				 
				SET ans = CONCAT(ans,'&',CAST(i AS CHAR));
	
				leave sc;
			ELSE
				set j = j+1;
			END if;
	
		END loop sc;
		
		SET i = i+1;
		SET j = 2;
		
	END loop fr;	
	RETURN ans;
END $$

DELIMITER ;

SELECT primenum(1000);
