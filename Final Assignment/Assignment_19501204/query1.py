import mysql.connector
db = mysql.connector.connect(host='localhost', database='olympics_19501204', user='me', password='myUserPassword')
cur = db.cursor()

select_query1="SELECT * FROM Games WHERE eventdate >= '2021-07-27';"
cur.execute(select_query1)
rows = cur.fetchall()
for row in rows:
	print (row)

cur.close();
