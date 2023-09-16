-- Procedure to insert a new Athlete
DROP PROCEDURE IF EXISTS insNewAthlete;
DELIMITER //
CREATE PROCEDURE insNewAthlete(
	f VARCHAR(12), 	-- firstname
	l VARCHAR(15), 	-- lastname
	s CHAR(1), 		-- sex
	y YEAR,			-- year
	c CHAR(3)		-- country_code
	)
	COMMENT 'Insert a new Athlete into Athletes table.'
	BEGIN
		DECLARE newid CHAR(6); 
		SELECT MAX(athlete_id)+1 FROM Athletes INTO newid;
		INSERT INTO Athletes 
			VALUES(newid, f, l, s, y, c); 
	END//
DELIMITER ;
