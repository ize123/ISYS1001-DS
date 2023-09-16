-- Create Film Table

CREATE TABLE Film(
    film_ID CHAR(5) NOT NULL,
    title VARCHAR(50) NOT NULL,
    genre VARCHAR(50),
    fDescription MEDIUMTEXT,
    PRIMARY KEY(film_ID)
);