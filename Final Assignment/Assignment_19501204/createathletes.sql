/* createathlete.sql: MySQL table for table creation in the final assessment of ISYS1001*/

-- Create athletes table
DROP TABLE IF EXISTS Athletes;
CREATE TABLE Athletes(
	athlete_id	CHAR(6) NOT NULL,
	firstname	VARCHAR(12) NOT NULL,
	lastname 	VARCHAR(15) NOT NULL,
	sex		CHAR(1), 
	birthyear	YEAR,
	country_code	CHAR(3) NOT NULL,
	PRIMARY KEY(athlete_id),
	FOREIGN KEY(country_code) REFERENCES Country(country_code)
);
	
