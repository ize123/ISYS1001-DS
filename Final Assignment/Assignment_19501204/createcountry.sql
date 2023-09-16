/* createcountry.sql: MySQL table for table creation in the final assessment of ISYS1001*/

-- Create country table
DROP TABLE IF EXISTS Country;
CREATE TABLE Country(
	country_code 	CHAR(3) NOT NULL,
	name 	    	VARCHAR(24) NOT NULL,
	PRIMARY KEY(country_code)
);
	
