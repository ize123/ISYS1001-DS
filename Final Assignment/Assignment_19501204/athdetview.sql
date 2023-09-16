-- A view to display the athlete and the event they participated in.
DROP VIEW IF EXISTS Athletedetails;
CREATE VIEW Athletedetails AS
	SELECT Athletes.athlete_id,
		firstname,
		lastname,
		country_code,
		AthleteParticipation.game_id AS GameID,
		event,
		Games.sex
	FROM (Athletes JOIN AthleteParticipation 
			ON AthleteParticipation.athlete_id = Athletes.athlete_id)
	JOIN Games ON Games.game_id = AthleteParticipation.game_id;
		
