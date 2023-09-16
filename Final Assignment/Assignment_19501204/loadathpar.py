# Python load file to fill up the AthleteParticipation table
import mysql.connector
db = mysql.connector.connect(host='localhost', database='olympics_19501204', user='me', password='myUserPassword')
cur = db.cursor()

insert_stmt="INSERT INTO AthleteParticipation VALUES (%s, %s, %s, %s)"

check="NULL"

with open("AthleteParticipation.csv") as f:
	# Discard the first line
	f.readline()
	for line in f.readlines():
		values = line.strip().split(",")
		if values[2] == "NULL":
			values[2] = None
		if values[3] == "NULL":
			values[3] = None
		obj = (values[0], values[1], values[2], values[3])
		cur.execute(insert_stmt, obj)

print("Done!")
cur.close()
db.commit()
