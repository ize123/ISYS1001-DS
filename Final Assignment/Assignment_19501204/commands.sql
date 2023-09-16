-- Display all games that occured on and after 27/07/2021
SELECT * 
FROM Games
WHERE eventdate >= '2021-07-27';

-- Find how many days ago each game was
SELECT *, 
	DATEDIFF(NOW(), eventdate) AS DaysDifference
FROM Games;

-- Display all american athletes and the games they participated in.
SELECT 	Athletes.athlete_id, 
	CONCAT(Athletes.firstname, " ", Athletes.lastname) AS FullName, 
	AthleteParticipation.game_id,
	Games.event
FROM Athletes
LEFT OUTER JOIN AthleteParticipation ON Athletes.athlete_id=AthleteParticipation.athlete_id
LEFT OUTER JOIN Games ON Games.game_id=AthleteParticipation.game_id
WHERE Athletes.country_code='USA'
ORDER BY game_id;

-- Display all gold medallist
SELECT AthleteParticipation.athlete_id, 
	Athletes.firstname, 
	Athletes.lastname, 
	count(medal) as total_gold_medals, 
	country_code
FROM AthleteParticipation
INNER JOIN Athletes ON Athletes.athlete_id=AthleteParticipation.athlete_id
WHERE medal='G'
GROUP BY AthleteParticipation.athlete_id;

-- Gold medal winner of Individual games
SELECT athlete_id, 
		game_id, 
		count(medal)
FROM AthleteParticipation
WHERE medal='G' AND team_id IS NULL
group by athlete_id, game_id;

-- Gold medal winner of Team games
SELECT DISTINCT game_id, 
	AthleteParticipation.team_id, 
	country_code
FROM AthleteParticipation
LEFT OUTER JOIN Team ON AthleteParticipation.team_id=Team.team_id
WHERE medal='G' AND AthleteParticipation.team_id IS NOT NULL;

-- Games that have given a gold medal
SELECT DISTINCT AthleteParticipation.game_id,
		event,
		sex,
		eventdate 
FROM AthleteParticipation
LEFT OUTER JOIN Games on AthleteParticipation.game_id=Games.game_id
WHERE medal='G'
GROUP BY game_id;

-- Count all gold medals each country has won at an event level.
SELECT COUNT(DISTINCT game_id) as goldmedals, 
		Athletes.country_code
FROM AthleteParticipation
INNER JOIN Athletes ON Athletes.athlete_id=AthleteParticipation.athlete_id
WHERE medal='G'
GROUP BY Athletes.country_code;

-- Display the all medal types and the amount for athletes with more than 1 medal
SELECT athlete_id,
	SUM(CASE WHEN medal = 'B' THEN 1 ELSE 0 END) AS BronzeMedals,
	SUM(CASE WHEN medal = 'S' THEN 1 ELSE 0 END) AS SilverMedals,
	SUM(CASE WHEN medal = 'G' THEN 1 ELSE 0 END) AS Goldmedals,
	count(medal) as TotalMedals 
FROM AthleteParticipation 
GROUP BY athlete_id
HAVING TotalMedals > 1;

