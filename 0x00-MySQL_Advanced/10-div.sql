-- Creates function SafeDiv that divides and returns the first number by the second number.
-- Returns 0 if second number is 0.
-- function SafeDiv takes 2 args: a, INT, b, INT

DELIMITER //

DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
	RETURN (IF (b = 0, 0, a / b));
END //

DELIMITER ;
