LOAD DATA LOCAL
	INFILE	'Games.csv'
	INTO TABLE Games
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;