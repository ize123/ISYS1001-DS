/* creategames.sql: MySQL table for table creation in the final assessment of ISYS1001*/

-- Create games table
DROP TABLE IF EXISTS Games;
CREATE TABLE Games(
	game_id		CHAR(6) NOT NULL,
	event		VARCHAR(40) NOT NULL,
	discipline 	VARCHAR(24) NOT NULL,
	sex		CHAR(1)	NOT NULL,
	eventdate	DATE,
	teamgame	BOOLEAN,
	PRIMARY KEY(game_id)
);
