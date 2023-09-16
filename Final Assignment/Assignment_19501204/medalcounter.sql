-- Procedure to count total medals of a country
DROP PROCEDURE IF EXISTS countMedals;
CREATE PROCEDURE countMedals(
	IN code CHAR(3),
	OUT total INT)
COMMENT 'Count the number of medals a country has. Team games are counted as one medal. Provided the ISO-3166 code.'
SELECT COUNT(DISTINCT game_id)
FROM AthleteParticipation
INNER JOIN Athletes 
	ON Athletes.athlete_id=AthleteParticipation.athlete_id
WHERE medal IS NOT NULL 
	AND Athletes.country_code = code
GROUP BY Athletes.country_code INTO total;
