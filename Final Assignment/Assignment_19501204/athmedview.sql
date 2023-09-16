DROP VIEW IF EXISTS Athletemedals;
CREATE VIEW Athletemedals AS
	SELECT Athletes.athlete_id,
		firstname,
		lastname,
		SUM(CASE WHEN medal = 'B' THEN 1 ELSE 0 END) AS BronzeMedals,
		SUM(CASE WHEN medal = 'S' THEN 1 ELSE 0 END) AS SilverMedals,
		SUM(CASE WHEN medal = 'G' THEN 1 ELSE 0 END) AS Goldmedals,
		country_code
	FROM (Athletes JOIN AthleteParticipation 
			ON AthleteParticipation.athlete_id = Athletes.athlete_id)
	GROUP BY Athletes.athlete_id;
