import mysql.connector
db = mysql.connector.connect(host='localhost', database='olympics_19501204', user='me', password='myUserPassword')
cur = db.cursor()

select_query3= (
	"SELECT Athletes.athlete_id, \
	CONCAT(Athletes.firstname, ' ', Athletes.lastname) AS FullName, \
	AthleteParticipation.game_id, \
	Games.event \
	FROM Athletes \
	LEFT OUTER JOIN AthleteParticipation ON Athletes.athlete_id=AthleteParticipation.athlete_id \
	LEFT OUTER JOIN Games ON Games.game_id=AthleteParticipation.game_id \
	WHERE Athletes.country_code='USA' \
	ORDER BY game_id;"
)
cur.execute(select_query3)
row = cur.fetchall()
for row in rows:
	print (row)

cur.close()
