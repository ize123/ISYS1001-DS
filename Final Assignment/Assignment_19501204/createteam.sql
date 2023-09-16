/* createteam.sql: MySQL table for table creation in the final assessment of ISYS1001*/

-- Create Team table
DROP TABLE IF EXISTS Team;
CREATE TABLE Team(
	team_id		CHAR(6),
	discipline	VARCHAR(36),
	country_code	CHAR(3) NOT NULL,
	gender		VARCHAR(5) NOT NULL,
	PRIMARY KEY(team_id),
	FOREIGN KEY(country_code) REFERENCES Country(country_code) ON DELETE CASCADE
);
