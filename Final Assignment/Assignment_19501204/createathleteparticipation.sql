/* createathleteparticipation.sql: MySQL table for table creation in the final assessment of ISYS1001*/

-- Create athlete participation table
DROP TABLE IF EXISTS AthleteParticipation;
CREATE TABLE AthleteParticipation(
	athlete_id	CHAR(6),
	game_id		CHAR(6),
	team_id		CHAR(6),
	medal		CHAR(1),
	PRIMARY KEY(athlete_id, game_id),
	FOREIGN KEY(athlete_id) REFERENCES Athletes(athlete_id) ON DELETE CASCADE,
	FOREIGN KEY(game_id) REFERENCES Games(game_id) ON DELETE CASCADE,
	FOREIGN KEY(team_id) REFERENCES Team(team_id)
);
