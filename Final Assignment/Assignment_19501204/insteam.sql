LOAD DATA LOCAL
	INFILE	'Team.csv'
	INTO TABLE Team
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
