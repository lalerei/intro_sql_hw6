-- Выведите только четные числа. Пример: 2,4,6,8,10
DROP PROCEDURE IF EXISTS display_even;

DELIMITER ##

CREATE PROCEDURE display_even(`start_num` INT, `end_num` INT)
BEGIN
	DECLARE i INT DEFAULT `start_num`;
	DECLARE result TEXT DEFAULT NULL;
	WHILE  i<=`end_num` DO
		IF i%2 = 0 THEN
 			IF result IS NULL THEN
 				SET result = concat(i);
 			ELSE
 				SET result = concat(result, ', ', i);
 			END IF;
 		END IF;
		SET i = i + 1;
     END WHILE;
 	SELECT result;
 END ##
 
 DELIMITER ;

CALL display_even(20, 33); 